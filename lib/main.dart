import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_pages/routiner_authentication/routiner_splash.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_theme/routiner_theme.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_theme/routiner_themecontroller.dart';
import 'package:routiner_habit_tracker_app/translation/stringtranslation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,);
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final themedata = Get.put(RoutinerThemecontroler());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themedata.isdark ? RoutinerMythemes.darkTheme : RoutinerMythemes.lightTheme,
      fallbackLocale: const Locale('en', 'US'),
      translations: Apptranslation(),
      locale: const Locale('en', 'US'),
      home: const RoutinerSplash(),
    );
  }

}


