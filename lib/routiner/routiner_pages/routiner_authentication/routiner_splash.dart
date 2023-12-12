import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_icons.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_pages/routiner_authentication/routiner_onboarding.dart';

class RoutinerSplash extends StatefulWidget {
  const RoutinerSplash({super.key});

  @override
  State<RoutinerSplash> createState() => _RoutinerSplashState();
}

class _RoutinerSplashState extends State<RoutinerSplash> {
  @override
  void initState() {
    super.initState();
    goup();
  }

  goup() async {
    var navigator = Navigator.of(context);
    await Future.delayed(const Duration(seconds: 5));
    navigator.push(MaterialPageRoute(
      builder: (context) {
        return const RoutinerOnboarding();
      },
    ));
  }

  dynamic size;
  double height = 0.00;
  double width = 0.00;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery
        .of(context)
        .size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Center(
        child: Image.asset(
          RoutinerPngimage.applogo,
          height: height / 6,
        ),
      )
    );
  }
}
