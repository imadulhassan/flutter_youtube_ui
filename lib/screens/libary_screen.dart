import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LibraryState();
  }
}

class LibraryState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Library Screen"),
      ),
    );
  }
}
