import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_color.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_fontstyle.dart';
import 'package:get/get.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_icons.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_pages/routiner_authentication/routiner_continuewithemail.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_theme/routiner_themecontroller.dart';

class RoutinerSetting extends StatefulWidget {
  const RoutinerSetting({super.key});

  @override
  State<RoutinerSetting> createState() => _RoutinerSettingState();
}

class _RoutinerSettingState extends State<RoutinerSetting> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(RoutinerThemecontroler());

  bool isDark = true;
  bool isDark1 = true;
  bool isDark2 = true;

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
                "Settings",
                style: pbold.copyWith(
                    fontSize: 20,
                    color: themedata.isdark
                        ? RoutinerColor.white
                        : RoutinerColor.black),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 36, vertical: height / 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "GENERAL",
                style: pbold.copyWith(fontSize: 10, color: RoutinerColor.grey),
              ),
              SizedBox(
                height: height / 56,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: RoutinerColor.white,
                    border: Border.all(color: RoutinerColor.lightgrey)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 36, vertical: height / 56),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(RoutinerSvgicons.general,
                              height: height / 36),
                          SizedBox(
                            width: width / 36,
                          ),
                          Text(
                            "General",
                            style: pmedium.copyWith(
                                fontSize: 14, color: RoutinerColor.black),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.chevron_right,
                            size: height / 36,
                            color: RoutinerColor.grey,
                          )
                        ],
                      ),
                      SizedBox(height: height/96,),
                      const Divider(color: RoutinerColor.lightgrey,),
                      SizedBox(height: height/96,),
                      Row(
                        children: [
                          SvgPicture.asset(RoutinerSvgicons.darkmode,
                              height: height / 36),
                          SizedBox(
                            width: width / 36,
                          ),
                          Text(
                            "Dark Mode",
                            style: pmedium.copyWith(
                                fontSize: 14, color: RoutinerColor.black),
                          ),
                          const Spacer(),
                          SizedBox(
                            height: height / 30,
                            child: Switch(
                                activeColor: RoutinerColor.green,
                                onChanged: (state) {
                                  setState(() {
                                    themedata.changeTheme(state);
                                    isDark2 = state;
                                    themedata.update();
                                  });
                                },
                                value: themedata.isdark),
                          ),
                        ],
                      ),
                      SizedBox(height: height/96,),
                      const Divider(color: RoutinerColor.lightgrey,),
                      SizedBox(height: height/96,),
                      Row(
                        children: [
                          SvgPicture.asset(RoutinerSvgicons.security,
                              height: height / 36),
                          SizedBox(
                            width: width / 36,
                          ),
                          Text(
                            "Security",
                            style: pmedium.copyWith(
                                fontSize: 14, color: RoutinerColor.black),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.chevron_right,
                            size: height / 36,
                            color: RoutinerColor.grey,
                          )
                        ],
                      ),
                      SizedBox(height: height/96,),
                      const Divider(color: RoutinerColor.lightgrey,),
                      SizedBox(height: height/96,),
                      Row(
                        children: [
                          SvgPicture.asset(RoutinerSvgicons.notifications,
                              height: height / 36),
                          SizedBox(
                            width: width / 36,
                          ),
                          Text(
                            "Notifications",
                            style: pmedium.copyWith(
                                fontSize: 14, color: RoutinerColor.black),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.chevron_right,
                            size: height / 36,
                            color: RoutinerColor.grey,
                          )
                        ],
                      ),
                      SizedBox(height: height/96,),
                      const Divider(color: RoutinerColor.lightgrey,),
                      SizedBox(height: height/96,),
                      Row(
                        children: [
                          SvgPicture.asset(RoutinerSvgicons.sounds,
                              height: height / 36),
                          SizedBox(
                            width: width / 36,
                          ),
                          Text(
                            "Sounds",
                            style: pmedium.copyWith(
                                fontSize: 14, color: RoutinerColor.black),
                          ),
                          const Spacer(),
                          SizedBox(
                            height: height / 30,
                            child: Switch(
                                activeColor: RoutinerColor.green,
                                onChanged: (state) {
                                  setState(() {
                                    isDark1 = state;
                                  });
                                },
                                value: isDark1),
                          ),
                        ],
                      ),
                      SizedBox(height: height/96,),
                      const Divider(color: RoutinerColor.lightgrey,),
                      SizedBox(height: height/96,),
                      Row(
                        children: [
                          SvgPicture.asset(RoutinerSvgicons.vacationmode,
                              height: height / 36),
                          SizedBox(
                            width: width / 36,
                          ),
                          Text(
                            "Vacation Mode",
                            style: pmedium.copyWith(
                                fontSize: 14, color: RoutinerColor.black),
                          ),
                          const Spacer(),
                          SizedBox(
                            height: height / 30,
                            child: Switch(
                                activeColor: RoutinerColor.green,
                                onChanged: (state) {
                                  setState(() {
                                    isDark = state;
                                  });
                                },
                                value: isDark),
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
              Text(
                "ABOUT US",
                style: pbold.copyWith(fontSize: 10, color: RoutinerColor.grey),
              ),
              SizedBox(
                height: height / 56,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: RoutinerColor.white,
                    border: Border.all(color: RoutinerColor.lightgrey)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 36, vertical: height / 56),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(RoutinerSvgicons.rate,
                              height: height / 36),
                          SizedBox(
                            width: width / 36,
                          ),
                          Text(
                            "Rate Routiner",
                            style: pmedium.copyWith(
                                fontSize: 14, color: RoutinerColor.black),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.chevron_right,
                            size: height / 36,
                            color: RoutinerColor.grey,
                          )
                        ],
                      ),
                      SizedBox(height: height/96,),
                      const Divider(color: RoutinerColor.lightgrey,),
                      SizedBox(height: height/96,),
                      Row(
                        children: [
                          SvgPicture.asset(RoutinerSvgicons.share,
                              height: height / 36),
                          SizedBox(
                            width: width / 36,
                          ),
                          Text(
                            "Share with Friends",
                            style: pmedium.copyWith(
                                fontSize: 14, color: RoutinerColor.black),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.chevron_right,
                            size: height / 36,
                            color: RoutinerColor.grey,
                          )
                        ],
                      ),
                      SizedBox(height: height/96,),
                      const Divider(color: RoutinerColor.lightgrey,),
                      SizedBox(height: height/96,),
                      Row(
                        children: [
                          SvgPicture.asset(RoutinerSvgicons.aboutus,
                              height: height / 36),
                          SizedBox(
                            width: width / 36,
                          ),
                          Text(
                            "About Us",
                            style: pmedium.copyWith(
                                fontSize: 14, color: RoutinerColor.black),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.chevron_right,
                            size: height / 36,
                            color: RoutinerColor.grey,
                          )
                        ],
                      ),
                      SizedBox(height: height/96,),
                      const Divider(color: RoutinerColor.lightgrey,),
                      SizedBox(height: height/96,),
                      Row(
                        children: [
                          SvgPicture.asset(RoutinerSvgicons.support,
                              height: height / 36),
                          SizedBox(
                            width: width / 36,
                          ),
                          Text(
                            "Support",
                            style: pmedium.copyWith(
                                fontSize: 14, color: RoutinerColor.black),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.chevron_right,
                            size: height / 36,
                            color: RoutinerColor.grey,
                          )
                        ],
                      ),
                      SizedBox(height: height/96,),
                      const Divider(color: RoutinerColor.lightgrey,),
                      SizedBox(height: height/96,),
                      InkWell(
                        splashColor: RoutinerColor.transparent,
                        highlightColor: RoutinerColor.transparent,
                        onTap: () {
                          _showbottomsheet();
                        },
                        child: Row(
                          children: [
                            Image.asset(RoutinerPngimage.swap,
                                height: height / 36, color: RoutinerColor.black),
                            SizedBox(
                              width: width / 36,
                            ),
                            Text(
                              "Change Layout",
                              style: pmedium.copyWith(
                                  fontSize: 14, color: RoutinerColor.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height/96,),
                      const Divider(color: RoutinerColor.lightgrey,),
                      SizedBox(height: height/96,),
                      InkWell(
                        splashColor: RoutinerColor.transparent,
                        highlightColor: RoutinerColor.transparent,
                        onTap: () {
                          onbackpressed();
                        },
                        child: Row(
                          children: [
                            Image.asset(RoutinerPngimage.logout,
                                height: height / 40, color: RoutinerColor.black),
                            SizedBox(
                              width: width / 36,
                            ),
                            Text(
                              "Logout",
                              style: pmedium.copyWith(
                                  fontSize: 14, color: RoutinerColor.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> onbackpressed() async {
    return await showDialog(
        builder: (context) => AlertDialog(
          backgroundColor: themedata.isdark
              ? RoutinerColor.black
              : RoutinerColor.white,
          title: Center(
            child: Text("Routiner - Habit Tracker".tr,
                textAlign: TextAlign.end,
                style: pbold.copyWith(
                    fontSize: 18)),
          ),
          content: Text(
            "Are you sure to logout from this app?".tr,
            style: pregular.copyWith(
                fontSize: 12),
          ),
          actionsAlignment: MainAxisAlignment.end,
          actions: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: RoutinerColor.btncolor),
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  "No".tr,
                  style: pregular.copyWith(
                      color: RoutinerColor.white),
                )),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return const RoutinerContinueWithEmail();
                  },
                ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor:  RoutinerColor.btncolor),
              child: Text("Yes".tr,
                  style: pregular.copyWith(
                      color:RoutinerColor.white)),
            )
          ],
        ),
        context: context);
  }

  _showbottomsheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Container(
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  height: height / 4,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                        child: Text("Select Application Layout",
                            style: pbold.copyWith(
                              fontSize: 14,
                            )),
                      ),
                      const Divider(),
                      SizedBox(
                        height: height / 26,
                        child: InkWell(
                          highlightColor: RoutinerColor.transparent,
                          splashColor: RoutinerColor.transparent,
                          onTap: () async {
                            await Get.updateLocale(const Locale('en', 'US'));
                            // ignore: use_build_context_synchronously
                            Navigator.of(context).pop();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "LTR",
                                style: psemibold.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(),
                      SizedBox(
                        height: height / 26,
                        child: InkWell(
                          highlightColor: RoutinerColor.transparent,
                          splashColor: RoutinerColor.transparent,
                          onTap: () async {
                            await Get.updateLocale(const Locale('ar', 'ab'));
                            // ignore: use_build_context_synchronously
                            Navigator.of(context).pop();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "RTL".tr,
                                style: psemibold.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(),
                      SizedBox(
                        height: height / 26,
                        child: InkWell(
                          highlightColor: RoutinerColor.transparent,
                          splashColor: RoutinerColor.transparent,
                          onTap: () async {
                            Navigator.of(context).pop();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Cancel'.tr,
                                style: psemibold.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
        });
  }
}
