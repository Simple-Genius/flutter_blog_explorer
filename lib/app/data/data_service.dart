import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../routes/app_pages.dart';
import 'models/news_model.dart';

class DataService extends GetxService {
  String url = 'https://intent-kit-16.hasura.app/api/rest/blogs';
  String adminSecret =
      '32qR4KmXOIpsGPQKMqEJHGJS27G5s7HdSKO3gdtQd2kv5e852SiYwWNfxkZOBuQ6';

  @override
  void onInit() async {
    super.onInit();
    await fetchData();
    //fetchBlogs();
  }

  navigateBetweenScreens(int indexValue) {
    if (indexValue == 0) {
      Get.offAllNamed(Routes.HOME, arguments: indexValue);
    } else if (indexValue == 1) {
      Get.offAllNamed(Routes.FAVORITES, arguments: indexValue);
    }
  }

  fetchData() async {
    var value;

    final response = await http.get(
      Uri.parse(url),
      headers: {'x-hasura-admin-secret': adminSecret},
    );

    if (response.statusCode == 200) {
      value = json.decode(response.body);
      return value;
    } else {
      print("Data is not available");
    }
  }

  // void fetchBlogs() async {
  //   const String url = 'https://intent-kit-16.hasura.app/api/rest/blogs';
  //   const String adminSecret =
  //       '32qR4KmXOIpsGPQKMqEJHGJS27G5s7HdSKO3gdtQd2kv5e852SiYwWNfxkZOBuQ6';

  //   try {
  //     final response = await http.get(Uri.parse(url), headers: {
  //       'x-hasura-admin-secret': adminSecret,
  //     });

  //     if (response.statusCode == 200) {
  //       // Request successful, handle the response data here
  //       print('Response data: ${response.body}');
  //     } else {
  //       // Request failed
  //       print('Request failed with status code: ${response.statusCode}');
  //       print('Response data: ${response.body}');
  //     }
  //   } catch (e) {
  //     // Handle any errors that occurred during the request
  //     print('Error: $e');
  //   }
  // }

  // fetchData() async {
  //   final headers = {
  //     'x-hasura-admin-secret':
  //         '32qR4KmXOIpsGPQKMqEJHGJS27G5s7HdSKO3gdtQd2kv5e852SiYwWNfxkZOBuQ6',
  //   };

  //   final url = Uri.parse('https://intent-kit-16.hasura.app/api/rest/blogs');

  //   final res = await http.get(url, headers: headers);
  //   final status = res.statusCode;
  //   if (status != 200) throw Exception('http.get error: statusCode= $status');

  //   print(res.body);
  // }
}
