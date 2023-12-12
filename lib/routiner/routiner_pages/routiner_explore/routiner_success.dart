import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_color.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_fontstyle.dart';
import 'package:get/get.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_icons.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_theme/routiner_themecontroller.dart';

class RoutinerSucccess extends StatefulWidget {
  const RoutinerSucccess({super.key});

  @override
  State<RoutinerSucccess> createState() => _RoutinerSucccessState();
}

class _RoutinerSucccessState extends State<RoutinerSucccess> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(RoutinerThemecontroler());

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Container(
        height: height / 1,
        width: width / 1,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [RoutinerColor.darkyellow, RoutinerColor.yellow, RoutinerColor.lightyellow],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 36, vertical: height / 36),
          child: Column(
            children: [
              SizedBox(
                height: height / 36,
              ),
              Row(
                children: [
                  InkWell(
                    splashColor: RoutinerColor.transparent,
                    highlightColor: RoutinerColor.transparent,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: height / 20,
                      width: height / 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: RoutinerColor.white),
                      child: Icon(
                        Icons.chevron_left,
                        size: height / 36,
                          color: RoutinerColor.black
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 36,
              ),
              Image.asset(
                RoutinerPngimage.success,
                height: height / 2.5,
                width: width/1.2,
                fit: BoxFit.fill,
              ),
              const Spacer(),
              Text(
                "Congrats!\nYou just reached your\nfirst habit goal!",
                style: pbold.copyWith(fontSize: 24, color: RoutinerColor.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "This badge is a symbol of your\ncommitment to yourself. Keep going\nand earn more badges along the way.",
                style: pmedium.copyWith(fontSize: 14, color: RoutinerColor.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: height / 30,
              ),
              Container(
                height: height / 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: RoutinerColor.white),
                child: Center(
                  child: Text(
                    "Claim",
                    style: pmedium.copyWith(fontSize: 14,color: RoutinerColor.black),
                  ),
                ),
              ),
              SizedBox(
                height: height / 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
