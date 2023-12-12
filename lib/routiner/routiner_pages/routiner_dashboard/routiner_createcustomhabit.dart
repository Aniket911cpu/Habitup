import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_color.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_fontstyle.dart';
import 'package:get/get.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_icons.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_theme/routiner_themecontroller.dart';

class RoutinerCreateCustomHabit extends StatefulWidget {
  const RoutinerCreateCustomHabit({super.key});

  @override
  State<RoutinerCreateCustomHabit> createState() =>
      _RoutinerCreateCustomHabitState();
}

class _RoutinerCreateCustomHabitState extends State<RoutinerCreateCustomHabit> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(RoutinerThemecontroler());

  bool isdark = true;

  List steps = ["Build", "Quit"];
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
        leadingWidth: width/1,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: width/36),
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
                "Create Custom Habits",
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
          padding:
              EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "NAME",
                style: pbold.copyWith(fontSize: 10),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter your NAME",
                    hintStyle: pmedium.copyWith(
                        fontSize: 18, color: RoutinerColor.lightgrey),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: RoutinerColor.lightgrey),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: RoutinerColor.green),
                    )),
                style: pmedium.copyWith(fontSize: 18, color: RoutinerColor.black),
                cursorColor: RoutinerColor.black,
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "ICON AND COLOR",
                style: pbold.copyWith(fontSize: 10),
              ),
              SizedBox(
                height: height / 56,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width / 2.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: RoutinerColor.lightgrey),
                        color: RoutinerColor.white),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width / 36, vertical: height / 96),
                      child: Row(
                        children: [
                          Container(
                            height: height / 20,
                            width: height / 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: RoutinerColor.bgcolor),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(RoutinerPngimage.run,
                                  height: height / 36),
                            ),
                          ),
                          SizedBox(
                            width: width / 36,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Walking",
                                style: pmedium.copyWith(fontSize: 14),
                              ),
                              Text(
                                "Icon",
                                style: pregular.copyWith(
                                    fontSize: 12, color: RoutinerColor.lightgrey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width / 2.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: RoutinerColor.lightgrey),
                        color: RoutinerColor.white),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width / 36, vertical: height / 96),
                      child: Row(
                        children: [
                          Container(
                            height: height / 20,
                            width: height / 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange),
                          ),
                          SizedBox(
                            width: width / 36,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Orange",
                                style: pmedium.copyWith(fontSize: 14),
                              ),
                              Text(
                                "Color",
                                style: pregular.copyWith(
                                    fontSize: 12, color: RoutinerColor.lightgrey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "GOAL",
                style: pbold.copyWith(fontSize: 10),
              ),
              SizedBox(
                height: height / 56,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: RoutinerColor.lightgrey),
                    color: RoutinerColor.white),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 36, vertical: height / 96),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "1 times",
                                style: pmedium.copyWith(fontSize: 14, color: RoutinerColor.black),
                              ),
                              Text(
                                "or more per day",
                                style: pregular.copyWith(
                                    fontSize: 12, color: RoutinerColor.lightgrey),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width / 36,
                          ),
                          Container(
                            height: height / 20,
                            width: height / 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: RoutinerColor.lightgrey)),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: SvgPicture.asset(RoutinerSvgicons.edit,
                                  height: height / 36),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 96,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: RoutinerColor.bgcolor),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width / 36, vertical: height / 96),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                RoutinerSvgicons.daily,
                                height: height / 36,
                              ),
                              SizedBox(width: width/36,),
                              Text(
                                "Daily",
                                style: pregular.copyWith(
                                    fontSize: 10, color: RoutinerColor.black),
                              ),
                              SizedBox(width: width/16,),
                              SvgPicture.asset(
                                RoutinerSvgicons.everyday,
                                height: height / 36,
                              ),
                              SizedBox(width: width/36,),
                              Text(
                                "Every day",
                                style: pregular.copyWith(
                                    fontSize: 10, color: RoutinerColor.black),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "REMINDERS",
                style: pbold.copyWith(fontSize: 10),
              ),
              SizedBox(
                height: height / 56,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: RoutinerColor.lightgrey),
                    color: RoutinerColor.white),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 36, vertical: height / 96),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Remember to set off time for a workout\ntoday.",
                            style: pregular.copyWith(
                                fontSize: 12, color: RoutinerColor.lightgrey),
                          ),
                          SizedBox(
                            width: width / 36,
                          ),
                          SizedBox(
                            height: height/36,
                            child: Switch(
                              activeColor: RoutinerColor.green,
                              onChanged: (state) {
                                setState(() {
                                  isdark = state;
                                });
                              },
                              value: isdark,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height / 96,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: RoutinerColor.bgcolor),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width / 36, vertical: height / 96),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                RoutinerSvgicons.timecircle,
                                height: height / 36,
                              ),
                              SizedBox(width: width/36,),
                              Text(
                                "09:30",
                                style: pregular.copyWith(
                                    fontSize: 10, color: RoutinerColor.black),
                              ),
                              SizedBox(width: width/16,),
                              SvgPicture.asset(
                                RoutinerSvgicons.bell,
                                height: height / 36,
                              ),
                              SizedBox(width: width/36,),
                              Text(
                                "Every day",
                                style: pregular.copyWith(
                                    fontSize: 10, color: RoutinerColor.black),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 56,
              ),
              Container(
                height: height / 18,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: RoutinerColor.white),
                child: Center(
                  child: Text(
                    "Add Reminder",
                    style:
                    pmedium.copyWith(fontSize: 14, color: RoutinerColor.black),
                  ),
                ),
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "HABIT TYPE",
                style: pbold.copyWith(fontSize: 10),
              ),
              SizedBox(
                height: height / 56,
              ),
              Container(
                height: height / 20,
                width: width / 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: RoutinerColor.lightgrey),
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
              SizedBox(
                height: height / 36,
              ),
              Container(
                height: height / 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: RoutinerColor.btncolor),
                child: Center(
                  child: Text(
                    "Add Habit",
                    style:
                    pmedium.copyWith(fontSize: 14, color: RoutinerColor.white),
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
