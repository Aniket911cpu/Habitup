import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_color.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_fontstyle.dart';
import 'package:get/get.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_icons.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_theme/routiner_themecontroller.dart';

class RoutinerLeaderBoard extends StatefulWidget {
  const RoutinerLeaderBoard({super.key});

  @override
  State<RoutinerLeaderBoard> createState() => _RoutinerLeaderBoardState();
}

class _RoutinerLeaderBoardState extends State<RoutinerLeaderBoard> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(RoutinerThemecontroler());

  List steps = ["Daily", "Weekly", "Monthly"];
  int selected = 0;

  List rank = ["4", "5", "6", "7", "8", "4", "5", "6", "7", "8"];
  List title = [
    "Jennings Stohler",
    "Jennings Stohler",
    "Amelina Aguila",
    "Kally Cirrincione",
    "Layla Schupbach",
    "Jennings Stohler",
    "Jennings Stohler",
    "Amelina Aguila",
    "Kally Cirrincione",
    "Layla Schupbach"
  ];
  List subtitle = [
    "912 Points",
    "846 Points",
    "771 Points",
    "693 Points",
    "555 Points",
    "912 Points",
    "846 Points",
    "771 Points",
    "693 Points",
    "555 Points"
  ];
  List img = [
    RoutinerPngimage.profile,
    RoutinerPngimage.profile1,
    RoutinerPngimage.profile2,
    RoutinerPngimage.profile3,
    RoutinerPngimage.profile4,
    RoutinerPngimage.profile,
    RoutinerPngimage.profile1,
    RoutinerPngimage.profile2,
    RoutinerPngimage.profile3,
    RoutinerPngimage.profile4,
  ];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        appBar: AppBar(
          leadingWidth: width / 1,
          toolbarHeight: height / 6.5,
          backgroundColor:
              themedata.isdark ? RoutinerColor.black : RoutinerColor.white,
          leading: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width / 36, vertical: height / 56),
            child: Column(
              children: [
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
                            border: Border.all(color: RoutinerColor.lightgrey)),
                        child: Icon(
                          Icons.chevron_left,
                          size: height / 36,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 36,
                    ),
                    Text(
                      "Leaderboard",
                      style: pbold.copyWith(
                          fontSize: 20,
                          color: themedata.isdark
                              ? RoutinerColor.white
                              : RoutinerColor.black),
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
              ],
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [RoutinerColor.darkyellow, RoutinerColor.yellow, RoutinerColor.lightyellow],
                  end: Alignment.centerLeft,
                  begin: Alignment.centerRight)),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width / 36, vertical: height / 36),
              child: Column(
                children: [
                  Image.asset(
                    RoutinerPngimage.circles,
                    width: width / 1,
                    height: height / 2.5,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: height/36,),
                  ListView.builder(
                    itemCount: img.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: height/56),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: RoutinerColor.white),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width / 36, vertical: height / 96),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: RoutinerColor.bgcolor,
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: RoutinerColor.white,
                                    child: Text(
                                      rank[index],
                                      style: pregular.copyWith(
                                          fontSize: 14,
                                          color: RoutinerColor.black),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width / 36,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      title[index],
                                      style: pmedium.copyWith(
                                          fontSize: 14,
                                          color: RoutinerColor.black),
                                    ),
                                    Text(
                                      subtitle[index],
                                      style: pregular.copyWith(
                                          fontSize: 12,
                                          color: RoutinerColor.lightgrey),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Image.asset(
                                  img[index],
                                  height: height / 30,
                                )
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
        ));
  }
}
