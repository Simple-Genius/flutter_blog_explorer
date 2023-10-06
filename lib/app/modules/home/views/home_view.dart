import 'package:flutter/material.dart';
import 'package:flutter_blog_explorer/app/data/models/news_model.dart';
import 'package:flutter_blog_explorer/app/modules/home/views/news_details.dart';
import 'package:flutter_blog_explorer/app/modules/home/widgets/news_card.dart';
import 'package:flutter_blog_explorer/app/modules/home/widgets/news_tile.dart';
import 'package:flutter_blog_explorer/app/widgets.dart/bottom_nav_bar.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
            child: Padding(
          padding: EdgeInsets.only(top: 40.0, left: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('02 October 2023'), Text("10.00 am")],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0, top: 10),
                child: Divider(
                  thickness: 2.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(children: [
                  for (int i = 0; i < controller.items.length; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: NewsTile(text: controller.items[i]),
                    ),
                ]),
              ),
              Obx(() => controller.newData.value.isEmpty
                  ? Padding(
                      padding: EdgeInsets.only(top: 80.0),
                      child: CircularProgressIndicator(
                        color: Color.fromARGB(255, 217, 215, 215),
                      ),
                    )
                  : ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: controller.newData.value.length,
                      itemBuilder: (BuildContext context, index) {
                        return NewsCard(
                            imgSrc: controller.newData.value[index]
                                ["image_url"],
                            title: controller.newData.value[index]["title"]);
                      }))
            ],
          ),
        )),
      ),
    );
  }
}
