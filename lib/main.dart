import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing_telegram_ui/controllers/theme_controller.dart';
import 'package:slicing_telegram_ui/widget/drawer.dart';
import './pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeController = Get.put(ThemeController());
    var myDrawer = MyDrawer();
    return Obx(
      () => MaterialApp(
        theme: (themeController.isLight.value)
            ? ThemeData.light()
            : ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
