import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_color.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_fontstyle.dart';
import 'package:get/get.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_icons.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_pages/routiner_profile/routiner_setting.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_theme/routiner_themecontroller.dart';

class RoutinerProfile extends StatefulWidget {
  const RoutinerProfile({super.key});

  @override
  State<RoutinerProfile> createState() => _RoutinerProfileState();
}

class _RoutinerProfileState extends State<RoutinerProfile> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(RoutinerThemecontroler());

  List steps = ["Activity", "Friends", "Achievements"];
  int selected = 0;

  List title = [
    "112 points earned!",
    "62 points earned!",
    "Challenge completed!",
    "Weekly winning streak is broken!",
    "96 points earned!",
    "110 points earned!"
  ];
  List subtitle = [
    "Today, 12:34 PM",
    "Today, 07:12 AM",
    "Yesterday, 14:12 PM",
    "12 Jun, 16:14 PM",
    "11 Jun, 17:45 PM",
    "10 Jun, 18:32 PM"
  ];
  List img = [
    RoutinerSvgicons.arrowup,
    RoutinerSvgicons.arrowup,
    RoutinerSvgicons.yellowmedal,
    RoutinerSvgicons.arrowdown,
    RoutinerSvgicons.arrowup,
    RoutinerSvgicons.arrowup,
  ];

  List title1 = [
    "Sharie Bento",
    "Micah Dantoni",
    "Oral Padlo",
    "Regina Stire",
    "Maressa Mcdiarmid",
    "Jennings Stohler"
  ];
  List img1 = [
    RoutinerPngimage.profile,
    RoutinerPngimage.profile1,
    RoutinerPngimage.profile2,
    RoutinerPngimage.profile3,
    RoutinerPngimage.profile4,
    RoutinerPngimage.profile,
  ];

  List color2 = [RoutinerColor.lightblue, RoutinerColor.lightyellow];
  List title2 = [
    "Best Runner!",
    "Best of the month!"
  ];
  List subtitle2 = [
    "1 months ago",
    "2 days ago"
  ];
  List img2 = [
    RoutinerPngimage.run,
    RoutinerPngimage.medal
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
        toolbarHeight: height / 4,
        leading: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 36, vertical: height / 56),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Profile",
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
                          return const RoutinerSetting();
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
                            RoutinerSvgicons.setting,
                            height: height / 36,
                          ),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: height / 96,
              ),
              Row(
                children: [
                  Image.asset(
                    RoutinerPngimage.profile,
                    height: height / 12,
                  ),
                  SizedBox(
                    width: width / 36,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mert Kahveci",
                        style: pmedium.copyWith(
                            fontSize: 18,
                            color: themedata.isdark
                                ? RoutinerColor.white
                                : RoutinerColor.black),
                      ),
                      Container(
                        width: width / 2.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: RoutinerColor.lightyellow),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width / 36, vertical: height / 200),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                RoutinerSvgicons.yellowmedal,
                                height: height / 40,
                              ),
                              SizedBox(
                                width: width / 56,
                              ),
                              Text(
                                "1452 Points",
                                style: pmedium.copyWith(
                                    fontSize: 14, color: RoutinerColor.yellow),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (selected == 0) ...[
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width / 36, vertical: height / 36),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Showing last month activity",
                          style: pmedium.copyWith(fontSize: 14),
                        ),
                        Container(
                            height: height / 20,
                            width: height / 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: RoutinerColor.white,
                                border:
                                    Border.all(color: RoutinerColor.lightgrey)),
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: SvgPicture.asset(
                                RoutinerSvgicons.filter,
                                height: height / 36,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: height / 56,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: img.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: height / 96),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: RoutinerColor.white,
                                border:
                                    Border.all(color: RoutinerColor.lightgrey)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width / 36, vertical: height / 96),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
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
                                  Container(
                                      height: height / 20,
                                      width: height / 20,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                              color: RoutinerColor.lightgrey)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6),
                                        child: SvgPicture.asset(
                                          img[index],
                                          height: height / 36,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              )
            ],
            if(selected == 1) ...[
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width / 36, vertical: height / 36),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "261 Friends",
                          style: pmedium.copyWith(fontSize: 14),
                        ),
                        const Spacer(),
                        Container(
                            height: height / 20,
                            width: height / 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: RoutinerColor.white,
                                border:
                                Border.all(color: RoutinerColor.lightgrey)),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: SvgPicture.asset(
                                RoutinerSvgicons.add,
                                height: height / 36,
                                color: RoutinerColor.black,
                              ),
                            )),
                        SizedBox(width: width/56,),
                        Container(
                            height: height / 20,
                            width: height / 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: RoutinerColor.white,
                                border:
                                Border.all(color: RoutinerColor.lightgrey)),
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: SvgPicture.asset(
                                RoutinerSvgicons.edit,
                                height: height / 36,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: height / 56,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: img1.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: height / 96),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: RoutinerColor.white,
                                border:
                                Border.all(color: RoutinerColor.lightgrey)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width / 36, vertical: height / 96),
                              child: Row(
                                children: [
                                  Image.asset(
                                    img1[index],
                                    height: height / 20,
                                  ),
                                  SizedBox(width: width/36,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        title1[index],
                                        style: pmedium.copyWith(
                                            fontSize: 14,
                                            color: RoutinerColor.black),
                                      ),
                                      Text(
                                        "912 Points",
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
                                          border: Border.all(
                                              color: RoutinerColor.lightgrey)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6),
                                        child: SvgPicture.asset(
                                          RoutinerSvgicons.trash,
                                          height: height / 36,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              )
            ],
            if(selected == 2) ...[
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width / 36, vertical: height / 36),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "2 Achievements",
                      style: pmedium.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: height / 56,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: img2.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: height / 96),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: RoutinerColor.white,
                                border:
                                Border.all(color: RoutinerColor.lightgrey)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width / 36, vertical: height / 96),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: color2[index],
                                    child: Image.asset(
                                      img2[index],
                                      height: height / 36,
                                    ),
                                  ),
                                  SizedBox(width: width/36,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        title2[index],
                                        style: pmedium.copyWith(
                                            fontSize: 14,
                                            color: RoutinerColor.black),
                                      ),
                                      Text(
                                        subtitle2[index],
                                        style: pregular.copyWith(
                                            fontSize: 12,
                                            color: RoutinerColor.lightgrey),
                                      ),
                                    ],
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
              )
            ]
          ],
        ),
      ),
    );
  }
}
