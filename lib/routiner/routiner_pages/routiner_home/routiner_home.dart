import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_color.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_fontstyle.dart';
import 'package:get/get.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_icons.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_pages/routiner_home/routiner_challangedetails.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_theme/routiner_themecontroller.dart';

class RoutinerHome extends StatefulWidget {
  const RoutinerHome({super.key});

  @override
  State<RoutinerHome> createState() => _RoutinerHomeState();
}

class _RoutinerHomeState extends State<RoutinerHome> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(RoutinerThemecontroler());

  List steps = ["Today", "Clubs 2"];
  int selected = 0;

  List title = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30"
  ];
  List subtitle = [
    "THU",
    "FRI",
    "SAT",
    "SUN",
    "MON",
    "TUE",
    "WED",
    "THU",
    "FRI",
    "SAT",
    "SUN",
    "MON",
    "TUE",
    "WED",
    "THU",
    "FRI",
    "SAT",
    "SUN",
    "MON",
    "TUE",
    "WED",
    "THU",
    "FRI",
    "SAT",
    "SUN",
    "MON",
    "TUE",
    "WED",
    "THU",
    "FRI"
  ];
  int selected1 = 0;

  List img1 = [
    RoutinerPngimage.habit,
    RoutinerPngimage.habit1,
    RoutinerPngimage.habit2,
    RoutinerPngimage.habit3,
  ];
  List title1 = ["Drink the water", "Walk", "Water Plants", "Meditate"];
  List subtitle1 = ["500/2000 ML", "0/1000 STEPS", "0/1 TIMES", "30/30 MIN"];
  List profileimg1 = [
    RoutinerPngimage.group1,
    RoutinerPngimage.group,
    RoutinerPngimage.group,
    RoutinerPngimage.group1,
  ];
  List symbol1 = [
    RoutinerSvgicons.add,
    RoutinerSvgicons.add,
    RoutinerSvgicons.add,
    RoutinerSvgicons.tick,
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
        leadingWidth: width / 1,
        toolbarHeight: height / 4.2,
        leading: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                        RoutinerSvgicons.calendar,
                        height: height / 46,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                        RoutinerSvgicons.notification,
                        height: height / 36,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi,Mert",
                        style: pmedium.copyWith(
                            fontSize: 18,
                            color: themedata.isdark
                                ? RoutinerColor.white
                                : RoutinerColor.black),
                      ),
                      Text(
                        "Let's make habits together!",
                        style: pregular.copyWith(
                            fontSize: 14, color: RoutinerColor.lightgrey),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: RoutinerColor.lightblue,
                    child: Image.asset(
                      RoutinerPngimage.mood,
                      height: height / 30,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
                          width: width / 2.25,
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
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 36, vertical: height / 36),
          child: Column(
            children: [
              SizedBox(
                height: height / 14,
                child: ListView.builder(
                  itemCount: title.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: width / 46),
                      child: InkWell(
                        splashColor: RoutinerColor.transparent,
                        highlightColor: RoutinerColor.transparent,
                        onTap: () {
                          setState(() {
                            selected1 = index;
                          });
                        },
                        child: Container(
                          width: width / 9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: RoutinerColor.white,
                              border: Border.all(
                                  color: selected1 == index
                                      ? RoutinerColor.btncolor
                                      : RoutinerColor.lightgrey)),
                          child: Column(
                            children: [
                              Text(
                                title[index],
                                style: pmedium.copyWith(
                                    fontSize: 20,
                                    color: selected1 == index
                                        ? RoutinerColor.btncolor
                                        :  RoutinerColor.black),
                              ),
                              SizedBox(
                                height: height / 500,
                              ),
                              Text(
                                subtitle[index],
                                style: pbold.copyWith(
                                    fontSize: 10,
                                    color: selected1 == index
                                        ? RoutinerColor.btncolor
                                        : RoutinerColor.lightgrey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: height / 36,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                        colors: [RoutinerColor.darkyellow, RoutinerColor.yellow, RoutinerColor.lightyellow],
                        end: Alignment.bottomCenter,
                        begin: Alignment.topCenter)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 36, vertical: height / 56),
                  child: Row(
                    children: [
                      Image.asset(
                        RoutinerPngimage.circleloader,
                        height: height / 20,
                      ),
                      SizedBox(
                        width: width / 26,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your daily goals almost done!",
                            style: pmedium.copyWith(
                                fontSize: 14, color: RoutinerColor.white),
                          ),
                          Text(
                            "1 of 4 completed",
                            style: pregular.copyWith(
                                fontSize: 12, color: RoutinerColor.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Challenges",
                    style: psemibold.copyWith(fontSize: 14),
                  ),
                  Text(
                    "VIEW ALL",
                    style: pbold.copyWith(
                        fontSize: 10, color: RoutinerColor.btncolor),
                  ),
                ],
              ),
              SizedBox(
                height: height / 56,
              ),
              InkWell(
                splashColor: RoutinerColor.transparent,
                highlightColor: RoutinerColor.transparent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const RoutinerChallangeDetails();
                    },
                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: RoutinerColor.white,
                      border: Border.all(color: RoutinerColor.lightgrey)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width / 36, vertical: height / 56),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          RoutinerSvgicons.watch,
                          height: height / 26,
                        ),
                        SizedBox(
                          width: width / 26,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Best Runners!",
                              style: pmedium.copyWith(
                                  fontSize: 14, color: RoutinerColor.black),
                            ),
                            Text(
                              "5 days 13 hours left",
                              style: pregular.copyWith(
                                  fontSize: 12, color: RoutinerColor.lightgrey),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              RoutinerPngimage.group,
                              width: width / 10,
                              height: height / 30,
                            ),
                            Text(
                              "5 days 13 hours left",
                              style: pregular.copyWith(
                                  fontSize: 12, color: RoutinerColor.lightgrey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height / 36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Habits",
                    style: psemibold.copyWith(fontSize: 14),
                  ),
                  Text(
                    "VIEW ALL",
                    style: pbold.copyWith(
                        fontSize: 10, color: RoutinerColor.btncolor),
                  ),
                ],
              ),
              SizedBox(
                height: height / 56,
              ),
              ListView.builder(
                itemCount: img1.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: height / 56),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: RoutinerColor.white,
                          border: Border.all(color: RoutinerColor.lightgrey)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width / 36, vertical: height / 56),
                        child: Row(
                          children: [
                            Image.asset(
                              img1[index],
                              height: height / 20,
                            ),
                            SizedBox(
                              width: width / 26,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title1[index],
                                  style: pmedium.copyWith(
                                      fontSize: 14, color: RoutinerColor.black),
                                ),
                                Text(
                                  subtitle1[index],
                                  style: pregular.copyWith(
                                      fontSize: 12,
                                      color: RoutinerColor.lightgrey),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Image.asset(
                              profileimg1[index],
                              height: height / 26,
                            ),
                            SizedBox(
                              width: width / 36,
                            ),
                            Container(
                              height: height / 22,
                              width: height / 22,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: RoutinerColor.lightgrey)),
                              child: Padding(
                                padding: index == 3
                                    ? const EdgeInsets.all(6)
                                    : const EdgeInsets.all(12),
                                child: SvgPicture.asset(
                                  symbol1[index],
                                  height: height / 36,
                                  color: index == 3
                                      ? RoutinerColor.green
                                      : RoutinerColor.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
