import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:slicing_telegram_ui/controllers/theme_controller.dart';

class MyDrawer extends StatelessWidget {
  var theme = Get.find<ThemeController>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/1024px-Circle-icons-profile.svg.png',
                    ),
                  ),
                  Obx(
                    () => IconButton(
                      icon: (theme.isLight.value)
                          ? Icon(
                              Icons.wb_sunny,
                              size: 30,
                            )
                          : Icon(Icons.dark_mode_outlined),
                      onPressed: () {
                        theme.changeTheme();
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Obx(
                    () => Text(
                      'Contacts',
                      style: (theme.isLight.value)
                          ? TextStyle(
                              color: Colors.black,
                            )
                          : TextStyle(
                              color: Colors.white,
                            ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Obx(
                    () => Text(
                      'Calls',
                      style: (theme.isLight.value)
                          ? TextStyle(
                              color: Colors.black,
                            )
                          : TextStyle(
                              color: Colors.white,
                            ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.person_pin_circle,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Obx(
                    () => Text(
                      'People Nearby',
                      style: (theme.isLight.value)
                          ? TextStyle(
                              color: Colors.black,
                            )
                          : TextStyle(
                              color: Colors.white,
                            ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.save_alt_rounded,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Obx(
                    () => Text(
                      'Saved Message',
                      style: (theme.isLight.value)
                          ? TextStyle(
                              color: Colors.black,
                            )
                          : TextStyle(
                              color: Colors.white,
                            ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Obx(
                    () => Text(
                      'Settings',
                      style: (theme.isLight.value)
                          ? TextStyle(
                              color: Colors.black,
                            )
                          : TextStyle(
                              color: Colors.white,
                            ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                children: [
                  Icon(
                    Icons.person_add,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Obx(
                    () => Text(
                      'Invite Friends',
                      style: (theme.isLight.value)
                          ? TextStyle(
                              color: Colors.black,
                            )
                          : TextStyle(
                              color: Colors.white,
                            ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.info_outline_rounded,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Obx(
                    () => Text(
                      'Telegram Features',
                      style: (theme.isLight.value)
                          ? TextStyle(
                              color: Colors.black,
                            )
                          : TextStyle(
                              color: Colors.white,
                            ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
