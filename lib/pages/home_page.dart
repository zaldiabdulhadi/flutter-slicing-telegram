import 'dart:math';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:slicing_telegram_ui/controllers/theme_controller.dart';
import 'package:slicing_telegram_ui/models/chat.dart';
import 'package:slicing_telegram_ui/widget/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Chat> dummyData = List.generate(100, (index) {
    return Chat(
        banyakChat: Random().nextInt(10000).toString(),
        firstName: Faker().person.firstName(),
        name: Faker().food.restaurant(),
        subtitle: Faker().lorem.sentence(),
        imageUrl: 'https://picsum.photos/id/$index/200/300');
  });

  @override
  Widget build(BuildContext context) {
    var textTheme = Get.find<ThemeController>();
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final myAppBar = AppBar(
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 15),
          child: Icon(
            Icons.search,
            size: 30,
          ),
        ),
      ],
      backgroundColor: const Color(0XFF0088CC),
      title: const Text('Zalxzy'),
    );

    final emptyBody = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      drawer: MyDrawer(),
      appBar: myAppBar,
      body: Container(
        height: emptyBody,
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Dismissible(
                    key: Key(index.toString()),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(dummyData[index].imageUrl.toString()),
                      ),
                      title: Text(
                        dummyData[index].name.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Obx(
                            () => Text(
                              '${dummyData[index].firstName}: ',
                              style: TextStyle(
                                color: (textTheme.isLight.value)
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              dummyData[index].subtitle.toString(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(DateFormat.Hm()
                              .format(DateTime.now())
                              .toString()),
                          const SizedBox(
                            height: 10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                                padding: EdgeInsets.all(5),
                                color: Colors.grey,
                                child: Text(
                                  dummyData[index].banyakChat.toString(),
                                  style: TextStyle(fontSize: 9),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: emptyBody * .009,
                  ),
                ],
              );
            }),
      ),
    );
  }
}
