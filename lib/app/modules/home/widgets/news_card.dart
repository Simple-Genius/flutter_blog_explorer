import 'package:flutter/material.dart';
import 'package:flutter_blog_explorer/app/modules/home/views/news_details.dart';
import 'package:get/get.dart';

class NewsCard extends StatelessWidget {
  final String imgSrc;
  final String title;
  const NewsCard({
    super.key,
    required this.imgSrc,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => DetailsView(
              image: imgSrc,
              title: title,
            ));
      },
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                //color: const Color.fromARGB(255, 227, 219, 219),
                borderRadius: BorderRadius.circular(10)),
            child: imgSrc.runtimeType != String
                ? Text("Image could  not be loaded")
                : Image.network(imgSrc),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.length > 30 ? '${title.substring(0, 20)}...' : title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text("TECH"),
                    ),
                    Text("02 October, 2023")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
