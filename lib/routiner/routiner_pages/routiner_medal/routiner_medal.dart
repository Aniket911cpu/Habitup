import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_color.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_fontstyle.dart';
import 'package:get/get.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_icons.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_pages/routiner_medal/routiner_leaderboard.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_theme/routiner_themecontroller.dart';

class RoutinerMedal extends StatefulWidget {
  const RoutinerMedal({super.key});

  @override
  State<RoutinerMedal> createState() => _RoutinerMedalState();
}

class _RoutinerMedalState extends State<RoutinerMedal> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(RoutinerThemecontroler());

  List steps = ["Daily", "Weekly", "Monthly"];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            themedata.isdark ? RoutinerColor.black : RoutinerColor.white,
        leadingWidth: width / 1,
        toolbarHeight: height / 4.2,
        leading: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 36, vertical: height / 56),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Activity",
                    style: pbold.copyWith(
                        fontSize: 20,
                        color: themedata.isdark
                            ? RoutinerColor.white
                            : RoutinerColor.black),
                  ),
                  InkWell(
                    splashColor: RoutinerColor.transparent,
                    highlightColor: RoutinerColor.transparent,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const RoutinerLeaderBoard();
                        },
                      ));
                    },
                    child: Container(
                        height: height / 20,
                        width: height / 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: RoutinerColor.white,
                            border: Border.all(color: RoutinerColor.lightgrey)),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: SvgPicture.asset(
                            RoutinerSvgicons.users,
                            height: height / 36,
                          ),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: height / 56,
              ),
              Container(
                height: height / 20,
                width: width / 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: RoutinerColor.bgcolor),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: steps.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      highlightColor: RoutinerColor.transparent,
                      splashColor: RoutinerColor.transparent,
                      onTap: () {
                        setState(() {
                          selected = index;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width / 63, vertical: height / 116),
                        child: Container(
                          width: width / 3.53,
                          decoration: BoxDecoration(
                              color: selected == index
                                  ? RoutinerColor.white
                                  : RoutinerColor.transparent,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Text(
                            steps[index],
                            style: pmedium.copyWith(
                              fontSize: 14,
                              color: selected == index
                                  ? RoutinerColor.btncolor
                                  : RoutinerColor.grey,
                            ),
                          )),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: height / 56,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "This week",
                        style: pmedium.copyWith(
                            fontSize: 14,
                            color: themedata.isdark
                                ? RoutinerColor.white
                                : RoutinerColor.black),
                      ),
                      Text(
                        "May 28 - Jun 3",
                        style: pregular.copyWith(
                            fontSize: 12, color: RoutinerColor.lightgrey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: height / 20,
                    width: height / 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: RoutinerColor.lightgrey)),
                    child: Icon(
                      Icons.chevron_left,
                      size: height / 36,
                    ),
                  ),
                  SizedBox(
                    width: width / 36,
                  ),
                  Container(
                    height: height / 20,
                    width: height / 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: RoutinerColor.lightgrey)),
                    child: Icon(
                      Icons.chevron_right,
                      size: height / 36,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 36, vertical: height / 36),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: RoutinerColor.white,
                    border: Border.all(color: RoutinerColor.lightgrey)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 36, vertical: height / 96),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              height: height / 20,
                              width: height / 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: RoutinerColor.bgcolor),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  RoutinerPngimage.eye,
                                  height: height / 36,
                                ),
                              )),
                          SizedBox(
                            width: width / 36,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "All Habits",
                                style: pmedium.copyWith(
                                    fontSize: 14, color: RoutinerColor.black),
                              ),
                              Text(
                                "Summary",
                                style: pregular.copyWith(
                                    fontSize: 12,
                                    color: RoutinerColor.lightgrey),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: height / 20,
                            width: height / 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: RoutinerColor.lightgrey)),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              size: height / 36,
                                color: RoutinerColor.black
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 56,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SUCCESS RATE",
                                style: pbold.copyWith(
                                    fontSize: 10,
                                    color: RoutinerColor.lightgrey),
                              ),
                              Text(
                                "%98",
                                style: pmedium.copyWith(
                                    fontSize: 18, color: RoutinerColor.green),
                              ),
                              SizedBox(
                                height: height / 96,
                              ),
                              Text(
                                "POINTS EARNED",
                                style: pbold.copyWith(
                                    fontSize: 10,
                                    color: RoutinerColor.lightgrey),
                              ),
                              Container(
                                width: width / 4.7,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: RoutinerColor.lightyellow),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width / 36,
                                      vertical: height / 200),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        RoutinerSvgicons.yellowmedal,
                                        height: height / 36,
                                      ),
                                      SizedBox(
                                        width: width / 56,
                                      ),
                                      Text(
                                        "322",
                                        style: pmedium.copyWith(
                                            fontSize: 14,
                                            color: RoutinerColor.yellow),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height / 96,
                              ),
                              Text(
                                "SKIPPED",
                                style: pbold.copyWith(
                                    fontSize: 10,
                                    color: RoutinerColor.lightgrey),
                              ),
                              Text(
                                "4",
                                style: pmedium.copyWith(
                                    fontSize: 18, color: RoutinerColor.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width / 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "COMPLETED",
                                style: pbold.copyWith(
                                    fontSize: 10,
                                    color: RoutinerColor.lightgrey),
                              ),
                              Text(
                                "244",
                                style: pmedium.copyWith(
                                    fontSize: 18, color: RoutinerColor.black),
                              ),
                              SizedBox(
                                height: height / 96,
                              ),
                              Text(
                                "BEST STREAK DAY",
                                style: pbold.copyWith(
                                    fontSize: 10,
                                    color: RoutinerColor.lightgrey),
                              ),
                              Text(
                                "22",
                                style: pmedium.copyWith(
                                    fontSize: 18, color: RoutinerColor.black),
                              ),
                              SizedBox(
                                height: height / 96,
                              ),
                              Text(
                                "FAILED",
                                style: pbold.copyWith(
                                    fontSize: 10,
                                    color: RoutinerColor.lightgrey),
                              ),
                              Text(
                                "2",
                                style: pmedium.copyWith(
                                    fontSize: 18, color: RoutinerColor.red),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 36,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: RoutinerColor.white,
                    border: Border.all(color: RoutinerColor.lightgrey)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 36, vertical: height / 96),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              height: height / 20,
                              width: height / 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: RoutinerColor.bgcolor),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  RoutinerPngimage.habits,
                                  height: height / 36,
                                ),
                              )),
                          SizedBox(
                            width: width / 36,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Habits",
                                style: pmedium.copyWith(
                                    fontSize: 14, color: RoutinerColor.black),
                              ),
                              Text(
                                "Comparison by week",
                                style: pregular.copyWith(
                                    fontSize: 12,
                                    color: RoutinerColor.lightgrey),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: RoutinerColor.lightgrey)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width / 36,
                                  vertical: height / 96),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "🔥Burn!",
                                    style: pmedium.copyWith(
                                        fontSize: 14,
                                        color: themedata.isdark
                                            ? RoutinerColor.white
                                            : RoutinerColor.black),
                                  ),
                                  Text(
                                    "32 habits",
                                    style: pregular.copyWith(
                                        fontSize: 12,
                                        color: RoutinerColor.lightgrey),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Image.asset(
                        RoutinerPngimage.chart,
                        width: width / 1,
                        height: height / 6,
                        fit: BoxFit.fill,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 36,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: RoutinerColor.white,
                    border: Border.all(color: RoutinerColor.lightgrey)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 36, vertical: height / 96),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              height: height / 20,
                              width: height / 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: RoutinerColor.bgcolor),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  RoutinerPngimage.smile,
                                  height: height / 36,
                                ),
                              )),
                          SizedBox(
                            width: width / 36,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Happy",
                                style: pmedium.copyWith(
                                    fontSize: 14, color: RoutinerColor.black),
                              ),
                              Text(
                                "Avg. Mood",
                                style: pregular.copyWith(
                                    fontSize: 12,
                                    color: RoutinerColor.lightgrey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 96,
                      ),
                      Image.asset(
                        RoutinerPngimage.chart1,
                        width: width / 1,
                        height: height / 6,
                        fit: BoxFit.fill,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
