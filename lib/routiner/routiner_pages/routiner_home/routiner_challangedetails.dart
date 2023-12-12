import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_color.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_fontstyle.dart';
import 'package:get/get.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_icons.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_theme/routiner_themecontroller.dart';

class RoutinerChallangeDetails extends StatefulWidget {
  const RoutinerChallangeDetails({super.key});

  @override
  State<RoutinerChallangeDetails> createState() =>
      _RoutinerChallangeDetailsState();
}

class _RoutinerChallangeDetailsState extends State<RoutinerChallangeDetails> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(RoutinerThemecontroler());

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
      body: Container(
        height: height / 1,
        width: width / 1,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [RoutinerColor.darkyellow, RoutinerColor.yellow, RoutinerColor.lightyellow],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width / 36, vertical: height / 36),
            child: Column(
              children: [
                SizedBox(
                  height: height / 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Container(
                      height: height / 20,
                      width: height / 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: RoutinerColor.white),
                      child: Padding(
                        padding: const EdgeInsets.all(13),
                        child: SvgPicture.asset(RoutinerSvgicons.add,
                            height: height / 36, color: RoutinerColor.black),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height / 26,
                ),
                Image.asset(
                  RoutinerPngimage.run,
                  height: height / 20,
                ),
                SizedBox(
                  height: height / 96,
                ),
                Text(
                  "Best Runners!",
                  style: pbold.copyWith(fontSize: 24, color: RoutinerColor.white),
                ),
                SizedBox(
                  height: height / 96,
                ),
                Text(
                  "May 28 to 4June",
                  style:
                      pregular.copyWith(fontSize: 12, color: RoutinerColor.white),
                ),
                SizedBox(
                  height: height / 36,
                ),
                Image.asset(
                  RoutinerPngimage.group2,
                  height: height / 25,
                ),
                SizedBox(
                  height: height / 36,
                ),
                Text(
                  "Duis aute irure dolor in reprehenderit in voluptate velit\nesse cillum dolore eu fugiat nullu pariatu. Duis aute\nirure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nullu pariatu.",
                  style:
                      pregular.copyWith(fontSize: 12, color: RoutinerColor.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: height / 36,
                ),
                Container(
                  height: height / 15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: RoutinerColor.white),
                  child: Center(
                    child: Text(
                      "Join the Challenge",
                      style: pmedium.copyWith(fontSize: 14, color: RoutinerColor.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 36,
                ),
                Row(
                  children: [
                    Text(
                      "Tasks",
                      style: pmedium.copyWith(fontSize: 14, color: RoutinerColor.white),
                    ),
                  ],
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
      ),
    );
  }
}
