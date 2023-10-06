import 'package:flutter_blog_explorer/app/data/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  List<String> items = ['Business', 'Sports', 'Tech', 'Entertainment'];

  Map<String, dynamic> data = {};
  RxList newData = [].obs;
  @override
  void onInit() async {
    super.onInit();
    data = await dataService.fetchData();
    newData.value = data["blogs"];
  }

  @override
  void onReady() {
    super.onReady();
  }
}
