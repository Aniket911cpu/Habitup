import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_color.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_fontstyle.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_icons.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_pages/routiner_dashboard/routiner_createcustomhabit.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_pages/routiner_explore/routiner_explore.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_pages/routiner_home/routiner_home.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_pages/routiner_medal/routiner_medal.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_pages/routiner_profile/routiner_profile.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_theme/routiner_themecontroller.dart';

// ignore: must_be_immutable
class RoutinerDashboard extends StatefulWidget {
  String? index;

  RoutinerDashboard(this.index, {super.key});

  @override
  State<RoutinerDashboard> createState() => _RoutinerDashboardState();
}

class _RoutinerDashboardState extends State<RoutinerDashboard> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(RoutinerThemecontroler());

  int _selectedItemIndex = 0;

  final List<Widget> _pages = const [
    RoutinerHome(),
    RoutinerExplore(),
    RoutinerMedal(),
    RoutinerProfile(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  Future<bool> onbackpressed() async {
    return await showDialog(
        builder: (context) => AlertDialog(
              title: Center(
                child: Text("Routiner Habit Tracker".tr,
                    textAlign: TextAlign.end,
                    style: pbold.copyWith(fontSize: 18)),
              ),
              content: Text(
                "Are you sure exit this app?".tr,
                style: pregular.copyWith(
                    fontSize: 14,
                    color: themedata.isdark
                        ? RoutinerColor.white
                        : RoutinerColor.black),
                textAlign: TextAlign.center,
              ),
              actionsAlignment: MainAxisAlignment.end,
              actions: [
                ElevatedButton(
                  onPressed: () async {
                    SystemNavigator.pop();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: RoutinerColor.btncolor),
                  child: Text("Yes",
                      style: pregular.copyWith(color: RoutinerColor.white)),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: RoutinerColor.btncolor),
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      "No",
                      style: pregular.copyWith(color: RoutinerColor.white),
                    )),
              ],
            ),
        context: context);
  }

  Widget _bottomTabBar() {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 56),
      child: Container(
        width: width / 1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: RoutinerColor.white),
        child: BottomNavigationBar(
          currentIndex: _selectedItemIndex,
          onTap: _onTap,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: RoutinerColor.transparent,
          elevation: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                RoutinerSvgicons.home,
                height: height / 30,
              ),
              activeIcon: SvgPicture.asset(
                RoutinerSvgicons.homefill,
                height: height / 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                RoutinerSvgicons.explore,
                height: height / 30,
              ),
              activeIcon: SvgPicture.asset(
                RoutinerSvgicons.explorefill,
                height: height / 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                RoutinerSvgicons.medal,
                height: height / 30,
              ),
              activeIcon: SvgPicture.asset(
                RoutinerSvgicons.medalfill,
                height: height / 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                RoutinerSvgicons.profile,
                height: height / 30,
              ),
              activeIcon: SvgPicture.asset(
                RoutinerSvgicons.profilefill,
                height: height / 30,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  void _onTap(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

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

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return WillPopScope(
      onWillPop: onbackpressed,
      child: Scaffold(
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: RoutinerColor.btncolor,
          mini: true,
          onPressed: () {
            _showbottomsheet();
          },
          child: SvgPicture.asset(
            RoutinerSvgicons.add,
            height: height / 46,
          ),
        ),
        bottomNavigationBar: _bottomTabBar(),
        body: _pages[_selectedItemIndex],
      ),
    );
  }

  _showbottomsheet() {
    showModalBottomSheet(
        backgroundColor: RoutinerColor.transparent,
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Container(
              decoration: const BoxDecoration(
                color: RoutinerColor.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 36, vertical: height / 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "NEW GOD HABIT",
                        style: pbold.copyWith(
                            fontSize: 10, color: RoutinerColor.lightgrey),
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
                              return const RoutinerCreateCustomHabit();
                            },
                          ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: RoutinerColor.lightgrey),
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width / 36, vertical: height / 56),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Create Custom Habit",
                                  style: pmedium.copyWith(
                                      fontSize: 14, color: RoutinerColor.black),
                                ),
                                Container(
                                  height: height / 20,
                                  width: height / 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: RoutinerColor.lightgrey)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13),
                                    child: SvgPicture.asset(
                                        RoutinerSvgicons.add,
                                        height: height / 36,
                                        color: RoutinerColor.black),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height / 56,
                      ),
                      Text(
                        "POPULAR HABITS",
                        style: pbold.copyWith(
                            fontSize: 10, color: RoutinerColor.lightgrey),
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
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width / 36),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: height / 20,
                                        width: height / 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                            fontSize: 14,
                                            color: RoutinerColor.black),
                                      ),
                                      Text(
                                        subtitle[index],
                                        style: pregular.copyWith(
                                            fontSize: 12,
                                            color: RoutinerColor.grey),
                                      ),
                                    ],
                                  ),
                                ),
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
          });
        });
  }
}
