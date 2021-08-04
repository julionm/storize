import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late Animation<double>? circleAnimation;
  late AnimationController? controller;

  void goToHome() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushNamed(context, "/home");
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 1500), vsync: this);
    circleAnimation = Tween<double>(begin: 20, end: 200).animate(controller!)
      ..addListener(() {
        setState(() {});
      });

    controller!.forward();
    this.goToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Container(
        height: circleAnimation!.value,
        width: circleAnimation!.value,
        decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        child: Center(
          child: Text("Storize",
              style: GoogleFonts.inter(
                  fontSize: circleAnimation!.value / 10, color: Colors.white)),
        ),
      )),
    );
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
}
