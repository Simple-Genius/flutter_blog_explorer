import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/blog_list_view_controller.dart';

class BlogListViewView extends GetView<BlogListViewController> {
  const BlogListViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BlogListViewView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BlogListViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
