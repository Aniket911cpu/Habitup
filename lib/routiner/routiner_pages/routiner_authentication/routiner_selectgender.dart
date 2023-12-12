import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_color.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_fontstyle.dart';
import 'package:get/get.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_icons.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_pages/routiner_authentication/routiner_selecthabits.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_theme/routiner_themecontroller.dart';

class RoutinerSelectGender extends StatefulWidget {
  const RoutinerSelectGender({super.key});

  @override
  State<RoutinerSelectGender> createState() => _RoutinerSelectGenderState();
}

class _RoutinerSelectGenderState extends State<RoutinerSelectGender> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(RoutinerThemecontroler());

  List img = [RoutinerPngimage.male, RoutinerPngimage.female];
  List title = ["Male", "Female"];

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
          "Select Gender",
          style: pbold.copyWith(fontSize: 20),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choose your gender",
              style: pmedium.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: height / 56,
            ),
            SizedBox(
              height: height / 6,
              child: ListView.builder(
                itemCount: img.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: width/30),
                    child: Container(
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
                    ),
                  );
                },
              ),
            ),
            const Spacer(),
            InkWell(
              splashColor: RoutinerColor.transparent,
              highlightColor: RoutinerColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const RoutinerSelectHabits();
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
    );
  }
}
