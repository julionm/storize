import 'package:flutter/material.dart';
import 'package:storize/modules/home/home_page.dart';
import 'package:storize/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Storize",
      home: SplashPage(),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage()
      },
    );
  }
}
