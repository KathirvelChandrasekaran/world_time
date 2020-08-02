import 'package:flutter/material.dart';
class ChooseLoacation extends StatefulWidget {
  @override
  _ChooseLoacationState createState() => _ChooseLoacationState();
}

class _ChooseLoacationState extends State<ChooseLoacation> {
  void getData() async {
    String name1 = await Future.delayed(Duration(seconds: 4), () {
      return 'kathir';
    });

    String name2 = await Future.delayed(Duration(seconds: 2), () {
      return 'kathirvel';
    });

    print(name1 + name2);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('Choose Location screen'),
    );
  }
}
