class SizedBoxParser {
  bool key = false;
  SizedBoxParser.fromJson(Map<String, dynamic> json) {
    key = bool.parse(json['key']);
  }
}
