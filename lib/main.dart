import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/screens/nav_routes.dart';

//Main Function
void main() {
  runApp(
    ProviderScope(child: MyHomeScreen('Youtube')),
  );
}

class MyHomeScreen extends StatelessWidget {
  String appTtitle = '';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
        title: appTtitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark,
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: Colors.white,
            )),
        home: NavScreen());
  }

  MyHomeScreen(this.appTtitle);
}
