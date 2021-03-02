import 'package:get/get.dart';

import '../controllers/images_controller.dart';

class ImagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImagesController>(
      () => ImagesController(),
    );
  }
}
