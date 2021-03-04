import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final data = [
    {
      'status': 1,
      'time': '2021-03-03 15:34:30',
      'bitmaps': [
        'assets/images/Bitmap1.png',
        'assets/images/Bitmap2.png',
        'assets/images/Bitmap3.png',
        'assets/images/Bitmap4.png'
      ]
    },
    {
      'status': 1,
      'time': '2021-03-03 10:30:30',
      'bitmaps': [
        'assets/images/Bitmap1.png',
        'assets/images/Bitmap2.png',
        'assets/images/Bitmap3.png',
        'assets/images/Bitmap4.png'
      ]
    },
    {
      'status': 0,
      'time': '2021-02-27 10:30:30',
      'bitmaps': [
        'assets/images/Bitmap1.png',
        'assets/images/Bitmap2.png',
        'assets/images/Bitmap3.png',
        'assets/images/Bitmap4.png',
        'assets/images/Bitmap1.png',
        'assets/images/Bitmap2.png',
        'assets/images/Bitmap3.png',
      ]
    },
    {
      'status': 0,
      'time': '2021-01-30 10:30:30',
      'bitmaps': [
        'assets/images/Bitmap4.png',
        'assets/images/Bitmap2.png',
        'assets/images/Bitmap3.png',
        'assets/images/Bitmap1.png'
      ]
    },
    {
      'status': 0,
      'time': '2020-04-30 10:30:30',
      'bitmaps': [
        'assets/images/Bitmap2.png',
        'assets/images/Bitmap5.png',
        'assets/images/Bitmap6.png',
        'assets/images/Bitmap4.png'
      ]
    },
    {
      'status': 0,
      'time': '2019-04-30 10:30:30',
      'bitmaps': [
        'assets/images/Bitmap5.png',
        'assets/images/Bitmap6.png',
        'assets/images/Bitmap4.png',
        'assets/images/Bitmap1.png'
      ]
    }
  ];
  final count = 0.obs;
  final extent = 0.00.obs;

  void changeExtent(value) {
    extent.value = value;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
