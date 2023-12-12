import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_color.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_fontstyle.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_icons.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_pages/routiner_authentication/routiner_continuewithemail.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn();
final FirebaseAuth _auth = FirebaseAuth.instance;

Future<UserCredential?> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await _auth.signInWithCredential(credential);
}

Future<void> signOutGoogle() async {
  await _googleSignIn.signOut();
  await _auth.signOut();
}

class RoutinerOnboarding extends StatefulWidget {
  const RoutinerOnboarding({Key? key}) : super(key: key);

  @override
  State<RoutinerOnboarding> createState() => _RoutinerOnboardingState();
}

class _RoutinerOnboardingState extends State<RoutinerOnboarding> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  var pageController = PageController();
  List<Widget> pages = [];
  var selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  init() {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    pages = [
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 26, vertical: height / 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: height / 16,
            ),
            Center(
              child: Image.asset(
                RoutinerPngimage.onboarding,
                height: height / 2.7,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: height / 36,
            ),
            Text(
              "Create\nGood Habits",
              style: pbold.copyWith(fontSize: 36, color: RoutinerColor.white),
            ),
            SizedBox(
              height: height / 96,
            ),
            Text(
              "Change your life by slowly adding new healthy habits\nand sticking to them.",
              style:
                  pregular.copyWith(fontSize: 12, color: RoutinerColor.white),
            ),
          ],
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 26, vertical: height / 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: height / 16,
            ),
            Center(
              child: Image.asset(
                RoutinerPngimage.onboarding1,
                height: height / 2.7,
                width: width / 1,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: height / 36,
            ),
            Text(
              "Track\nYour Progress",
              style: pbold.copyWith(fontSize: 36, color: RoutinerColor.white),
            ),
            SizedBox(
              height: height / 96,
            ),
            Text(
              "Everyday you become one step closer to\nyour goal. Don't give up!",
              style:
                  pregular.copyWith(fontSize: 12, color: RoutinerColor.white),
            ),
          ],
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 26, vertical: height / 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: height / 16,
            ),
            Center(
              child: Image.asset(
                RoutinerPngimage.onboarding2,
                height: height / 2.7,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: height / 36,
            ),
            Text(
              "Stay Together\nand Strong",
              style: pbold.copyWith(fontSize: 36, color: RoutinerColor.white),
            ),
            SizedBox(
              height: height / 96,
            ),
            Text(
              "Find friends to discuss common topics. Complete\nchallenges together.",
              style:
                  pregular.copyWith(fontSize: 12, color: RoutinerColor.white),
            ),
          ],
        ),
      ),
    ];
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    init();
    return Scaffold(
      body: Container(
        height: height / 1,
        width: width / 1,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [RoutinerColor.darkyellow, RoutinerColor.yellow, RoutinerColor.lightyellow],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter)),
        child: Stack(
          children: [
            PageView(
              controller: pageController,
              children: pages,
              onPageChanged: (index) {
                selectedIndex = index;
                setState(() {});
              },
            ),
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              bottom: 190,
              left: 9,
              child: DotIndicator(
                  unselectedIndicatorColor: RoutinerColor.grey,
                  pageController: pageController,
                  pages: pages,
                  dotSize: 8.00,
                  currentDotSize: 12,
                  indicatorColor: RoutinerColor.white),
            ),
            Positioned(
                bottom: 30,
                left: 9,
                right: 9,
                child: Column(
                  children: [
                    InkWell(
                      splashColor: RoutinerColor.transparent,
                      highlightColor: RoutinerColor.transparent,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const RoutinerContinueWithEmail();
                          },
                        ));
                      },
                      child: Container(
                        height: height / 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: RoutinerColor.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              RoutinerPngimage.login,
                              height: height / 36,
                            ),
                            SizedBox(
                              width: width / 36,
                            ),
                            Text(
                              "Continue with E-mail",
                              style: pmedium.copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 56,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height / 20,
                          width: width / 3.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: RoutinerColor.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                RoutinerPngimage.apple,
                                height: height / 40,
                              ),
                              SizedBox(
                                width: width / 36,
                              ),
                              Text(
                                "Apple",
                                style: pmedium.copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            await Firebase.initializeApp();
                            GestureDetector(
                              onTap: () async {
                                UserCredential? userCredential = await signInWithGoogle();
                                if (userCredential != null) {
                                  // The user successfully signed in. You can use the UserCredential object to get information about the user.
                                } else {
                                  // The user did not sign in successfully. Handle the error.
                                }
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    RoutinerPngimage.google,
                                    height: height / 40,
                                  ),
                                  SizedBox(
                                    width: width / 36,
                                  ),
                                  Text(
                                    "Google",
                                    style: pmedium.copyWith(fontSize: 14),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: Container(
                            height: height / 20,
                            width: width / 3.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: RoutinerColor.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  RoutinerPngimage.google,
                                  height: height / 40,
                                ),
                                SizedBox(
                                  width: width / 36,
                                ),
                                Text(
                                  "Google",
                                  style: pmedium.copyWith(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: height / 20,
                          width: width / 3.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: RoutinerColor.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                RoutinerPngimage.facebook,
                                height: height / 40,
                              ),
                              SizedBox(
                                width: width / 36,
                              ),
                              Text(
                                "Facebook",
                                style: pmedium.copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height / 56,
                    ),
                    Text(
                      "By continuing you agree Terms of Services & Privacy Policy",
                      style: pregular.copyWith(
                          fontSize: 11, color: RoutinerColor.white),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
