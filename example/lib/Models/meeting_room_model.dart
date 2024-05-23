class MeetingRoomModel {
  int? responseCode;
  String? responseMessage;
  String? empID;
  List<dynamic>? data;

  MeetingRoomModel({this.responseCode, this.responseMessage, this.data});

  MeetingRoomModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['response_code'];
    responseMessage = json['response_message'];
    empID = json['emp_id'];
    data = json['data'] ?? [];
  }
}

class MeetingData {
  String? meetingID;
  String? meetingRoomID;
  String? meetingRoomName;
  int? floor;
  int? size;
  int? status;
  String? occupiedby;
  String? startTime;
  String? endTime;
  String? employeeName;
  List<Map<String, String>>? participants;
  String? purpose;
  String? host;

  MeetingData(
      {this.meetingID,
      this.meetingRoomID,
      this.meetingRoomName,
      this.floor,
      this.size,
      this.status,
      this.occupiedby,
      this.startTime,
      this.endTime,
      this.employeeName,
      this.participants,
      this.purpose,
      this.host});

  MeetingData.fromJson(Map<String, dynamic> json) {
    meetingID = json['meeting_id'];
    meetingRoomID = json['mr_id'];
    meetingRoomName = json['mr_name'];
    floor = json['floor'];
    size = json['size'];
    status = json['status'];
    occupiedby = json['occupied_by'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    employeeName = json['employee_name'];
    participants = json.containsKey('participants')
        ? parseStringToListOfMaps(json['participants'])
        : [];
    purpose = json['purpose'];
    host = json['host'];
  }

  List<Map<String, String>> parseStringToListOfMaps(String input) {
    List<Map<String, String>> resultList = [];
    if (input != '[]') {
      // Remove the enclosing brackets
      String cleanedInput = input.substring(1, input.length - 1);

      // Split the string by commas
      List<String> keyValuePairs = cleanedInput.split(',');

      // Iterate over each key-value pair
      for (String pair in keyValuePairs) {
        // Split the pair by colon
        List<String> keyValue = pair.split(':');

        // Remove any leading or trailing whitespace
        String key = keyValue[0].trim();
        String value = keyValue[1].trim();

        // Remove any leading or trailing curly braces
        key = key.substring(1, key.length);
        value = value.substring(0, value.length - 1);

        // Create a map for each key-value pair and add it to the result list
        Map<String, String> map = {key: value};
        resultList.add(map);
      }
    } else {
      resultList = [];
    }

    return resultList;
  }
}
