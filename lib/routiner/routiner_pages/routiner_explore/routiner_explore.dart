import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_color.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_fontstyle.dart';
import 'package:get/get.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_icons.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_pages/routiner_explore/routiner_success.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_theme/routiner_themecontroller.dart';

class RoutinerExplore extends StatefulWidget {
  const RoutinerExplore({super.key});

  @override
  State<RoutinerExplore> createState() => _RoutinerExploreState();
}

class _RoutinerExploreState extends State<RoutinerExplore> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(RoutinerThemecontroler());

  List color = [
    RoutinerColor.lightorange,
    RoutinerColor.lightpurple,
    RoutinerColor.lightgreen,
    RoutinerColor.lightorange,
    RoutinerColor.lightpurple,
    RoutinerColor.lightgreen
  ];
  List title = ["Walk", "Swim", "Read", "Walk", "Swim", "Read"];
  List subtitle = ["10 km", "30 min", "20 min", "10 km", "30 min", "20 min"];
  List img = [
    RoutinerPngimage.run,
    RoutinerPngimage.swim,
    RoutinerPngimage.book,
    RoutinerPngimage.run,
    RoutinerPngimage.swim,
    RoutinerPngimage.book
  ];

  List img1 = [
    RoutinerPngimage.banner,
    RoutinerPngimage.banner1,
    RoutinerPngimage.banner,
    RoutinerPngimage.banner1
  ];
  List img2 = [
    RoutinerPngimage.banner2,
    RoutinerPngimage.banner3,
    RoutinerPngimage.banner2,
    RoutinerPngimage.banner3
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
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explore",
                style: pbold.copyWith(
                    fontSize: 20,
                    color: themedata.isdark
                        ? RoutinerColor.white
                        : RoutinerColor.black),
              ),
              Container(
                  height: height / 20,
                  width: height / 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: RoutinerColor.white,
                      border: Border.all(color: RoutinerColor.lightgrey)),
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: SvgPicture.asset(
                      RoutinerSvgicons.search,
                      height: height / 36,
                    ),
                  )),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Suggested for You",
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
              SizedBox(
                height: height / 7.5,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: color.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: width / 36),
                      child: Container(
                        width: width / 3,
                        decoration: BoxDecoration(
                            color: color[index],
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width / 36),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height / 20,
                                width: height / 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: RoutinerColor.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Image.asset(img[index],
                                      height: height / 36),
                                ),
                              ),
                              SizedBox(
                                height: height / 120,
                              ),
                              Text(
                                title[index],
                                style: pmedium.copyWith(
                                    fontSize: 14, color: RoutinerColor.black),
                              ),
                              Text(
                                subtitle[index],
                                style: pregular.copyWith(
                                    fontSize: 12, color: RoutinerColor.grey),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Habits Clubs",
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
              SizedBox(
                height: height / 7.5,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: img.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: width / 36),
                      child: Container(
                        width: width / 3,
                        decoration: BoxDecoration(
                            color: RoutinerColor.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width / 36),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height / 20,
                                width: height / 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: RoutinerColor.lightgrey)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Image.asset(img[index],
                                      height: height / 36),
                                ),
                              ),
                              SizedBox(
                                height: height / 120,
                              ),
                              Text(
                                title[index],
                                style: pmedium.copyWith(
                                    fontSize: 14, color: RoutinerColor.black),
                              ),
                              Text(
                                subtitle[index],
                                style: pregular.copyWith(
                                    fontSize: 12, color: RoutinerColor.grey),
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
                      return const RoutinerSucccess();
                    },
                  ));
                },
                child: SizedBox(
                  height: height / 5.5,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: img1.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: width / 36),
                        child: Image.asset(
                          img1[index],
                          width: width / 1.6,
                          fit: BoxFit.fill,
                        ),
                      );
                    },
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
                    "Learning",
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
              SizedBox(
                height: height / 5.5,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: img2.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: width / 36),
                      child: Image.asset(
                        img2[index],
                        width: width / 1.6,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
