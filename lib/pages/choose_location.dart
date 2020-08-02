import 'package:flutter/material.dart';
class ChooseLoacation extends StatefulWidget {
  @override
  _ChooseLoacationState createState() => _ChooseLoacationState();
}

class _ChooseLoacationState extends State<ChooseLoacation> {
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
