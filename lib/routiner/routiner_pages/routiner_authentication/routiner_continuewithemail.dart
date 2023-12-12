import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_color.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_fontstyle.dart';
import 'package:get/get.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_pages/routiner_authentication/routiner_createaccount.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_theme/routiner_themecontroller.dart';

class RoutinerContinueWithEmail extends StatefulWidget {
  const RoutinerContinueWithEmail({super.key});

  @override
  State<RoutinerContinueWithEmail> createState() =>
      _RoutinerContinueWithEmailState();
}

class _RoutinerContinueWithEmailState extends State<RoutinerContinueWithEmail> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(RoutinerThemecontroler());

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themedata.isdark ? RoutinerColor.black : RoutinerColor.white,
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
          "Continue with Email",
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
              "E-MAIL",
              style: pbold.copyWith(fontSize: 12),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter your email",
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
              "PASSWORD",
              style: pbold.copyWith(fontSize: 12),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter your password",
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
              "I forgot my password",
              style: pmedium.copyWith(
                  fontSize: 14, color: RoutinerColor.lightgrey),
            ),
            const Spacer(),
            InkWell(
              splashColor: RoutinerColor.transparent,
              highlightColor: RoutinerColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const RoutinerCreateAccount();
                  },
                ));
              },
              child: Center(
                child: Text(
                  "Don't have account? Let's create!",
                  style:
                      pmedium.copyWith(fontSize: 14, color: RoutinerColor.btncolor),
                ),
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
                  "Next",
                  style:
                      pmedium.copyWith(fontSize: 14, color: RoutinerColor.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
