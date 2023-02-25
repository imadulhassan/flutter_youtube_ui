import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddState();
  }
}

class AddState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Add Screen"),
      ),
    );
  }
}
