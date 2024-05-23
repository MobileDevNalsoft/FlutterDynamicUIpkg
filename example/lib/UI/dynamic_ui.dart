import 'dart:convert';
import 'package:customs/src.dart';
import 'package:example/Models/meeting_room_model.dart';
import 'package:example/Provider/meeting_room_provider.dart';
import 'package:example/Provider/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DynamicUI extends StatefulWidget {
  const DynamicUI({super.key});

  @override
  State<DynamicUI> createState() => _DynamicUIState();
}

class _DynamicUIState extends State<DynamicUI> {
  Map<String, dynamic>? json;
  int? upcomingMeetingsCount;
  final PageController _pageController = PageController();
  final PageController _floorPageController = PageController();
  late final sharedPreferences;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  Future<Map<String, dynamic>> loadJsonFromAssets(String filePath) async {
    String jsonString = await rootBundle.loadString(filePath);
    return jsonDecode(jsonString);
  }

  Future<void> getData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    json = await loadJsonFromAssets("assets/jsons/jsonUI.json");
    json = json?['homeScreen'];
    Provider.of<MeetingRoomProvider>(context, listen: false)
        .fetchListOfMeetingRooms();
    Provider.of<MeetingRoomProvider>(context, listen: false)
        .fetchUpcomingMeetings();
    Provider.of<UIProvider>(context, listen: false).setIsLoading(false);
  }

  @override
  Widget build(BuildContext context) {
    var e;
    Map<String, void Function()> functions = {
      "backButtonFunction": () {
        print('page popped');
      },
      "logoutButtonFunction": () {
        print('log out');
      },
      "floorButtonFunction": () {
        _floorPageController.jumpToPage(e.keys.first);
      }
    };

    var size = MediaQuery.of(context).size;

    return SafeArea(
        child: Provider.of<UIProvider>(context, listen: true).isLoading
            ? const Center(child: CircularProgressIndicator())
            : Scaffold(
                appBar:
                    JsonToWidget.fromJson(json!['AppBar'], context, functions)
                        .toPreferredSizeWidget,
                backgroundColor: Colors.blueGrey.shade100,
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          StreamBuilder(
                              stream: Provider.of<MeetingRoomProvider>(context,
                                      listen: false)
                                  .upcomingMeetingsStreamController
                                  .stream,
                              builder: (context, snapshot) {
                                if (snapshot.hasError) {
                                  return Center(
                                      child: Text('Error: ${snapshot.error}'));
                                }

                                if (snapshot.hasData) {
                                  final data = snapshot.data!;
                                  if (data != null) {
                                    List<MeetingData> upcomingMeetings = [];
                                    for (var d in data) {
                                      upcomingMeetings
                                          .add(MeetingData.fromJson(d));
                                    }
                                    upcomingMeetingsCount =
                                        upcomingMeetings.length;
                                    upcomingMeetings.sort((a, b) =>
                                        int.parse(a.startTime!).compareTo(
                                            int.parse(b.startTime!)));
                                    return Column(
                                      children: [
                                        if (upcomingMeetings.isNotEmpty)
                                          const Text('Upcoming Meetings'),
                                        if (upcomingMeetings.isNotEmpty)
                                          SizedBox(
                                            height: size.height *
                                                (size.height > 700
                                                    ? 0.09
                                                    : 0.12),
                                            width: size.width * 0.9,
                                            child: PageView(
                                              controller: _pageController,
                                              onPageChanged: (int page) {
                                                Provider.of<MeetingRoomProvider>(
                                                        context,
                                                        listen: false)
                                                    .setCurrentPage = page;
                                              },
                                              children: upcomingMeetings
                                                  .take(5)
                                                  .map((e) {
                                                e = e;
                                                json!["Card1"]["child"]["child"]
                                                            ["children"][0]
                                                        ["children"][0]
                                                    ["data"] = DateFormat(
                                                        'EEEE, MMM dd yyyy')
                                                    .format(DateTime.fromMillisecondsSinceEpoch(
                                                        int.parse(e.startTime!)));
                                                json!["Card1"]["child"]["child"]
                                                                ["children"][0]
                                                            ["children"][1]
                                                        ["data"] =
                                                    '${DateFormat.Hm().format(DateTime.fromMillisecondsSinceEpoch(int.parse(e.startTime!)))} to ${DateFormat.Hm().format(DateTime.fromMillisecondsSinceEpoch(int.parse(e.endTime!)))}';
                                                json!["Card1"]["child"]["child"]
                                                                ["children"][1]
                                                            ["children"][0]
                                                        ["data"] =
                                                    e.meetingRoomName!;
                                                json!["Card1"]["child"]["child"]
                                                                ["children"][1]
                                                            ["children"][1]
                                                        ["data"] =
                                                    'Floor ${e.floor}';

                                                return JsonToWidget.fromJson(
                                                    json!["Card1"], context)!;
                                              }).toList(),
                                            ),
                                          ),
                                        if (upcomingMeetings.length > 1)
                                          Consumer<MeetingRoomProvider>(
                                            builder:
                                                (context, provider, child) {
                                              return Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: List.generate(
                                                    upcomingMeetings.length > 5
                                                        ? 5
                                                        : upcomingMeetings
                                                            .length, (index) {
                                                  json!["CircleAvatar"]["child"]
                                                          ["backgroundColor"] =
                                                      index ==
                                                              provider
                                                                  .getCurrentPage
                                                          ? "#546e7a"
                                                          : "#ffffff";
                                                  return JsonToWidget.fromJson(
                                                      json!["CircleAvatar"],
                                                      context)!;
                                                }),
                                              );
                                            },
                                          ),
                                      ],
                                    );
                                  } else {
                                    return const SizedBox();
                                  }
                                }

                                return const SizedBox();
                              }),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Consumer<MeetingRoomProvider>(
                            builder: (context, provider, child) {
                              json!["Row"]["children"] = [
                                {0: 1},
                                {1: 8},
                                {2: 9}
                              ].map((e) {
                                Map<String, dynamic> tempJson = {};
                                tempJson = json!["FloorButton"];
                                tempJson["child"]["width"] = size.width * 0.2;
                                tempJson["child"]["child"]["style"]
                                        ["backgroundColor"] =
                                    provider.getCurrentFloorPage == e.keys.first
                                        ? "#607d8b"
                                        : "#b0bec5";
                                tempJson["child"]["child"]["child"]["data"] =
                                    'Floor ${e.values.first}';
                                tempJson["child"]["child"]["child"]["style"]
                                        ["color"] =
                                    provider.getCurrentFloorPage == e.keys.first
                                        ? "#ffffff"
                                        : "#000000";
                                return tempJson;
                              }).toList();

                              return JsonToWidget.fromJson(
                                  json!["Row"], context, functions)!;
                            },
                          ),
                          Expanded(
                            child: SizedBox(
                              width: size.width * 0.9,
                              child: StreamBuilder(
                                stream: Provider.of<MeetingRoomProvider>(
                                        context,
                                        listen: false)
                                    .meetingRoomsStreamController
                                    .stream,
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Center(
                                        child:
                                            Text('Error: ${snapshot.error}'));
                                  }

                                  if (snapshot.hasData) {
                                    List<dynamic> data = snapshot.data!;
                                    List<MeetingData> meetingRooms = [];
                                    for (var e in data) {
                                      meetingRooms.add(MeetingData.fromJson(e));
                                    }
                                    return PageView(
                                      controller: _floorPageController,
                                      onPageChanged: (int page) {
                                        Provider.of<MeetingRoomProvider>(
                                                context,
                                                listen: false)
                                            .setCurrentFloorPage = page;
                                      },
                                      children: [1, 8, 9]
                                          .map((e) => FloorPage(
                                              meetingRooms: meetingRooms,
                                              floor: e,
                                              size: size,
                                              sharedPreferences:
                                                  sharedPreferences,
                                              json: json!['Card2']))
                                          .toList(),
                                    );
                                  }
                                  return CustomWidgets.CustomCircularLoader();
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ));
  }
}

// ignore: must_be_immutable
class FloorPage extends StatefulWidget {
  List<MeetingData> meetingRooms;
  // ignore: prefer_typing_uninitialized_variables
  var floor;
  // ignore: prefer_typing_uninitialized_variables
  var size;
  final SharedPreferences sharedPreferences;
  Map<String, dynamic> json;

  FloorPage(
      {super.key,
      required this.meetingRooms,
      required this.floor,
      required this.size,
      required this.sharedPreferences,
      required this.json});

  @override
  State<FloorPage> createState() => _FloorPageState();
}

// ignore: must_be_immutable
class _FloorPageState extends State<FloorPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.meetingRooms.length,
      itemBuilder: (context, index) {
        if (widget.meetingRooms[index].floor == widget.floor) {
          widget.json["child"]["height"] =
              widget.size.height * (widget.size.height > 700 ? 0.09 : 0.12);
          widget.json["child"]["child"]["children"][0]["children"][0]
                  ["children"][0]["data"] =
              widget.meetingRooms[index].meetingRoomName;
          widget.json["child"]["child"]["children"][0]["children"][0]
                  ["children"][1]["data"] =
              ' (size : ${widget.meetingRooms[index].size})';
          widget.json["child"]["child"]["children"][0]["children"][1]["width"] =
              widget.size.width * 0.68;
          widget.json["child"]["child"]["children"][0]["children"][1]
              ["data"] = widget.meetingRooms[index].status ==
                  1
              ? 'Host : ${widget.meetingRooms[index].host == widget.sharedPreferences.getString('employee_id') ? 'You' : widget.meetingRooms[index].employeeName}'
              : 'available';
          widget.json["child"]["child"]["children"][1]["backgroundColor"] =
              widget.meetingRooms[index].status == 1 ? "#e53935" : "#66bb6a";

          return InkWell(
              onTap: () {
                Provider.of<MeetingRoomProvider>(context, listen: false)
                        .selectedMeetingRoomId =
                    widget.meetingRooms[index].meetingRoomID;
                Provider.of<MeetingRoomProvider>(context, listen: false)
                        .selectedMeetingRoomName =
                    widget.meetingRooms[index].meetingRoomName;
                Provider.of<MeetingRoomProvider>(context, listen: false)
                        .selectedMeetingRoomFloor =
                    widget.meetingRooms[index].floor;
                Provider.of<MeetingRoomProvider>(context, listen: false)
                    .selectedMeetingRoomSize = widget.meetingRooms[index].size;
              },
              child: JsonToWidget.fromJson(widget.json, context));
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
