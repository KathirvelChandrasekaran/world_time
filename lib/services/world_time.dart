import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location, time, flag, url;

  WorldTime({this.location, this.flag, this.url}) {}

  Future <void> getTime() async {
    Response res = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(res.body);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    time = now.toString();
  }
}