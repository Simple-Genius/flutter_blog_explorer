import 'package:get/get.dart';

import '../modules/blog_list_view/bindings/blog_list_view_binding.dart';
import '../modules/blog_list_view/views/blog_list_view_view.dart';
import '../modules/favorites/bindings/favorites_binding.dart';
import '../modules/favorites/bindings/favorites_binding.dart';
import '../modules/favorites/views/favorites_view.dart';
import '../modules/favorites/views/favorites_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BLOG_LIST_VIEW,
      page: () => const BlogListViewView(),
      binding: BlogListViewBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITES,
      page: () => const FavoritesView(),
      binding: FavoritesBinding(),
      children: [
        GetPage(
          name: _Paths.FAVORITES,
          page: () => const FavoritesView(),
          binding: FavoritesBinding(),
        ),
      ],
    ),
  ];
}
