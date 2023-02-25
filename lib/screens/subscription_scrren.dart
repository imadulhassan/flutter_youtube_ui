import 'package:flutter/material.dart';

class SubscriptionScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SubscriptionState();
  }
}

class SubscriptionState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Subscription Screen"),
      ),
    );
  }
}
