import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/images_controller.dart';

class ImagesView extends GetView<ImagesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ImagesView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ImagesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
