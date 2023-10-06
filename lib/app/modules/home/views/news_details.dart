import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsView extends GetView {
  final String image;
  final String title;

  DetailsView({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 25.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back)),
                Spacer(),
                Icon(Icons.save),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Divider(
              thickness: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, bottom: 20),
            child: Row(
              children: [Text("TECH | 29th September 2023")],
            ),
          ),
          Image.network(image),
          Padding(
            padding: EdgeInsets.only(left: 15.0, top: 50.0),
            child: Text(title),
          ),
          //Put the picture here
          //Put the details here,
        ],
      ),
    );
  }
}
