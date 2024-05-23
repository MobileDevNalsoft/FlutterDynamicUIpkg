import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'package:customs/src.dart' as customs;
import 'package:example/Models/meeting_room_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MeetingRoomProvider extends ChangeNotifier {
  final SharedPreferences? sharedPreferences;
  MeetingRoomProvider({this.sharedPreferences});

  //-----------Streams-----------------

  StreamController<dynamic> meetingRoomsStreamController =
      StreamController<dynamic>.broadcast();
  StreamController<dynamic> upcomingMeetingsStreamController =
      StreamController<dynamic>.broadcast();
  StreamController<dynamic> checkAvailabilityStreamController =
      StreamController<dynamic>.broadcast();
  StreamController<dynamic> roomStatusBasedOnDateStreamController =
      StreamController<dynamic>.broadcast();
  StreamController<dynamic> meetingInfoStreamController =
      StreamController<dynamic>.broadcast();

  final customs.CustomAPI api = customs.CustomAPI(
      "https://paas.nalsoft.net:4443/ords/xxma/mobileApis/", Dio(),
      username: 'mobiledevnalsoft', password: 'Nalsoft@12345');

  //Universal dynamic now

  DateTime dynamicNow = DateTime.now();

  void startDynamicNow() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      dynamicNow = DateTime.now();

      if (selectedStartTime != null && selectedEndTime != null) {
        if (selectedStartTime!.isBefore(dynamicNow)) {
          setSelectedStartTime = dynamicNow;
          notifyListeners();
        }
        if (selectedEndTime!.difference(selectedStartTime!).abs() <
            const Duration(minutes: 4)) {
          setSelectedEndTime =
              selectedStartTime!.add(const Duration(minutes: 5));
          notifyListeners();
        }
      }
    });
  }

  Timer? _homeTimer;

  void startDynamicUI() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      _homeTimer = timer;
      fetchListOfMeetingRooms();
      fetchUpcomingMeetings();
    });
  }

  void stopDynamicUI() {
    if (_homeTimer != null) {
      _homeTimer!.cancel();
    }
  }

  Timer? _checkAvailabilityTimer;

  void startDynamicCheckAvailability() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      _checkAvailabilityTimer = timer;
    });
  }

  void stopDynamicCheckAvailability() {
    if (_checkAvailabilityTimer != null) {
      _checkAvailabilityTimer!.cancel();
    }
  }

  //-----------home view properties--------------

  //-----variables-----

  int currentPage = 0;
  int currentFloorPage = 0;
  String? _selectedMeetingRoomId;
  int? _selectedMeetingRoomSize;
  String? selectedMeetingRoomName;
  int? selectedMeetingRoomFloor;
  //------setters------

  set setCurrentPage(value) {
    currentPage = value;
    notifyListeners();
  }

  set setCurrentFloorPage(value) {
    currentFloorPage = value;
    notifyListeners();
  }

  set selectedMeetingRoomId(value) {
    // getter in meeting room view
    _selectedMeetingRoomId = value;
  }

  set selectedMeetingRoomSize(value) {
    //getter in meeting room specific booking view
    _selectedMeetingRoomSize = value;
  }

  DateTime startOfDay() {
    return DateTime(
        selectedDate.year, selectedDate.month, selectedDate.day, 8, 0, 0, 0);
  }

  DateTime endOfDay(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day, 20, 0, 0, 0);
  }

  //------getters------

  int get getCurrentPage => currentPage;
  int get getCurrentFloorPage => currentFloorPage;
  String? get host => _host;
  //------Futures-------

  // ignore: non_constant_identifier_names
  Future<void> fetchListOfMeetingRooms() async {
    try {
      var resp = await api.get(
          'getListOfMeetingRooms?epoch_time=${dynamicNow.millisecondsSinceEpoch}');
      MeetingRoomModel response =
          MeetingRoomModel.fromJson(jsonDecode(resp.response!.data));
      if (response.responseCode == 200) {
        final data = response.data;
        meetingRoomsStreamController.sink.add(data);
      } else {
        throw Exception('Failed to load Data');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> fetchUpcomingMeetings() async {
    // also used in upcoming meetings view
    try {
      var resp = await api.get('getUpcomingMeetings?empId=00633');
      MeetingRoomModel response =
          MeetingRoomModel.fromJson(jsonDecode(resp.response!.data));
      if (response.responseCode == 200) {
        final data = response.data;
        upcomingMeetingsStreamController.sink.add(data);
      } else {
        throw Exception('Failed to load Data');
      }
    } catch (e) {
      print(e);
    }
  }

  List<MeetingData> addFreeSlots(List<MeetingData> meetings) {
    meetings.sort((a, b) => a.startTime!.compareTo(b.startTime!));

    List<MeetingData> freeSlots = [];

    DateTime currentFreeSlotStart =
        startOfDay().isAfter(dynamicNow) ? startOfDay() : dynamicNow;

    for (var meeting in meetings) {
      if (int.parse(meeting.startTime!) > dynamicNow.millisecondsSinceEpoch &&
          (int.parse(meeting.startTime!) -
                      currentFreeSlotStart.millisecondsSinceEpoch)
                  .abs() >=
              5 * 60 * 1000) {
        freeSlots.add(MeetingData(
            meetingRoomID: meeting.meetingID,
            meetingRoomName: meeting.meetingRoomName,
            floor: meeting.floor,
            startTime: dynamicNow.isAfter(currentFreeSlotStart)
                ? dynamicNow.millisecondsSinceEpoch.toString()
                : currentFreeSlotStart.millisecondsSinceEpoch.toString(),
            endTime: DateTime.fromMillisecondsSinceEpoch(
                    int.parse(meeting.startTime!))
                .subtract(const Duration(minutes: 1))
                .millisecondsSinceEpoch
                .toString(),
            occupiedby: ""));
      }

      currentFreeSlotStart = dynamicNow.isBefore(endOfDay(selectedDate))
          ? dynamicNow.isBefore(DateTime.fromMillisecondsSinceEpoch(
                      int.parse(meeting.endTime!))
                  .add(const Duration(minutes: 1)))
              ? DateTime.fromMillisecondsSinceEpoch(int.parse(meeting.endTime!))
                  .add(const Duration(minutes: 1))
              : dynamicNow
          : endOfDay(selectedDate);
    }

    if (currentFreeSlotStart.millisecondsSinceEpoch <
        endOfDay(selectedDate).millisecondsSinceEpoch) {
      freeSlots.add(MeetingData(
          meetingRoomID: _selectedMeetingRoomId,
          meetingRoomName: selectedMeetingRoomName,
          floor: selectedMeetingRoomFloor,
          startTime: currentFreeSlotStart.millisecondsSinceEpoch.toString(),
          endTime: endOfDay(selectedDate).millisecondsSinceEpoch.toString(),
          occupiedby: ""));
    }

    meetings = meetings + freeSlots;

    meetings.sort((a, b) => a.startTime!.compareTo(b.startTime!));
    return meetings;
  }

  //-----------check availability view properties-------------

  //-----variables-----

  int checkAvailabilityCurrentFloorPage = 0;
  DateTime? selectedStartTime;
  DateTime? selectedEndTime;
  DateTime selectedDate = DateTime.now();
  List<Map<String, String>> participants = [];
  List<Map<String, String>> _searchList = [];
  final List<MeetingData> _availableMeetingRooms = [];
  bool _firstVisit = true;
  bool isToggleActive = false;
  String? _host;
  //------setters------

  set setCheckAvailabilityCurrentFloorPage(value) {
    checkAvailabilityCurrentFloorPage = value;
    notifyListeners();
  }

  void setToggleState(value) {
    isToggleActive = value;
    if (!isToggleActive) {
      host = null;
    }
    notifyListeners();
  }

  set host(value) {
    _host = value;
    notifyListeners();
  }

  set setSelectedStartTime(value) {
    selectedStartTime = value;
    notifyListeners();
  }

  set setSelectedEndTime(value) {
    selectedEndTime = value;
    notifyListeners();
  }

  set setSelectedDate(value) {
    selectedDate = value;
    notifyListeners();
  }

  void setParticipants(emp) {
    if (emp != null) {
      if (participants.any(
          (element) => element.keys.first == "${emp[1].substring(0, 5)}")) {
        participants.removeWhere(
            (element) => element.keys.first == emp[1].substring(0, 5));
      } else {
        participants.add({
          "${emp[1].substring(0, 5)}": "${emp[0]}",
          "token": emp.sublist(2).join('-')
        });
      }
      notifyListeners();
    } else {
      participants = [];
    }
  }

  void setFirstVisit(bool value, bool fromInit) {
    _firstVisit = value;
    if (!fromInit) {
      notifyListeners();
    }
  }

  //------getters------

  int get checkAvailabilityCurrentFloorPageValue =>
      checkAvailabilityCurrentFloorPage;
  DateTime? get getSelectedStartTime => selectedStartTime;
  DateTime? get getSelectedEndTime => selectedEndTime;
  DateTime get getSelectedDate => selectedDate;
  List<Map<String, String>> get searchList => _searchList;
  List<MeetingData> get availableMeetingRooms => _availableMeetingRooms;
  bool get firstVisit => _firstVisit;
}
