import 'package:get/get.dart';

import '../controllers/blog_list_view_controller.dart';

class BlogListViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BlogListViewController>(
      () => BlogListViewController(),
    );
  }
}
