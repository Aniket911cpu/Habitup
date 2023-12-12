import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_color.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_fontstyle.dart';
import 'package:get/get.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_icons.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_pages/routiner_dashboard/routiner_dashboard.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_theme/routiner_themecontroller.dart';

class RoutinerSelectHabits extends StatefulWidget {
  const RoutinerSelectHabits({super.key});

  @override
  State<RoutinerSelectHabits> createState() => _RoutinerSelectHabitsState();
}

class _RoutinerSelectHabitsState extends State<RoutinerSelectHabits> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(RoutinerThemecontroler());

  List img = [
    RoutinerPngimage.water,
    RoutinerPngimage.run,
    RoutinerPngimage.book,
    RoutinerPngimage.meditate,
    RoutinerPngimage.study,
    RoutinerPngimage.journal,
    RoutinerPngimage.plant,
    RoutinerPngimage.sleep,
  ];
  List title = [
    "Drink Water",
    "Run",
    "Read Books",
    "Meditate",
    "Study",
    "Journal",
    "Water Plants",
    "Sleep"
  ];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            themedata.isdark ? RoutinerColor.black : RoutinerColor.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            splashColor: RoutinerColor.transparent,
            highlightColor: RoutinerColor.transparent,
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: height / 26,
              width: height / 26,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: RoutinerColor.lightgrey)),
              child: Icon(
                Icons.chevron_left,
                size: height / 36,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Select Habits",
          style: pbold.copyWith(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.builder(
                itemCount: img.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                    MediaQuery.of(context).size.aspectRatio * 4.75 / 1.75,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Container(
                    width: width / 2.2,
                    decoration: BoxDecoration(
                        border: Border.all(color: RoutinerColor.lightgrey),
                        borderRadius: BorderRadius.circular(15),
                        color: RoutinerColor.white),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height / 26,
                        ),
                        Image.asset(
                          img[index],
                          height: height / 20,
                        ),
                        SizedBox(
                          height: height / 36,
                        ),
                        Text(
                          title[index],
                          style: pmedium.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  );
                },
              ),
              // const Spacer(),
              InkWell(
                splashColor: RoutinerColor.transparent,
                highlightColor: RoutinerColor.transparent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return RoutinerDashboard("0");
                    },
                  ));
                },
                child: Container(
                  height: height / 15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: RoutinerColor.btncolor),
                  child: Center(
                    child: Text(
                      "Next",
                      style:
                      pmedium.copyWith(fontSize: 14, color: RoutinerColor.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
