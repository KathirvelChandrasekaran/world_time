import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String loading = 'loading';

  void setUpWorldTime() async {
    WorldTime wt =
        WorldTime(location: 'Kolkata', flag: 'India', url: 'Asia/Kolkata');
    await wt.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': wt.location,
      'flag': wt.flag,
      'time': wt.time,
      'isDay': wt.isDay
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SpinKitChasingDots(
            color: Colors.white,
            size: 60.0,
          ),
        ));
  }
}
