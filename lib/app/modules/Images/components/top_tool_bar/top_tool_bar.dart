import 'package:filemanager/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class TopToolBar extends StatelessWidget {
  const TopToolBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(Get.width / 6),
        ),
      ),
    );
  }
}
