import 'package:get/get.dart';

class ThemeController extends GetxController {
  var isLight = false.obs;

  void changeTheme() => isLight.value = !isLight.value;
}
