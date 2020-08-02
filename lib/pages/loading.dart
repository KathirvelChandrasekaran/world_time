import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

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
    setState(() {
      loading = wt.time;
    });
    print(wt.location);
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
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text(loading),
      ),
    );
  }
}
