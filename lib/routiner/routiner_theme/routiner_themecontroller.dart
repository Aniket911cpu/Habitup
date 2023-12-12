import 'package:get/get.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/chatboat_prefsname.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_theme/routiner_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RoutinerThemecontroler extends GetxController{
  @override
  void onInit()
  {
    SharedPreferences.getInstance().then((value) {
      isdark = value.getBool(routinerDarkMode)!;
    });
    update();
    super.onInit();
  }

  var isdark = false;
  Future<void> changeTheme (state) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isdark = prefs.getBool(routinerDarkMode) ?? true;
    isdark = !isdark;

    if (state == true) {
      Get.changeTheme(RoutinerMythemes.darkTheme);
      isdark = true;
    }
    else {
      Get.changeTheme(RoutinerMythemes.lightTheme);
      isdark = false;
    }
    update();
  }

}