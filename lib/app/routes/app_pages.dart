import 'package:get/get.dart';

import 'package:filemanager/app/modules/Images/bindings/images_binding.dart';
import 'package:filemanager/app/modules/Images/views/images_view.dart';
import 'package:filemanager/app/modules/activity/bindings/activity_binding.dart';
import 'package:filemanager/app/modules/activity/views/activity_view.dart';
import 'package:filemanager/app/modules/home/bindings/home_binding.dart';
import 'package:filemanager/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.IMAGES;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ACTIVITY,
      page: () => ActivityView(),
      binding: ActivityBinding(),
    ),
    GetPage(
      name: _Paths.IMAGES,
      page: () => ImagesView(),
      binding: ImagesBinding(),
    ),
  ];
}
