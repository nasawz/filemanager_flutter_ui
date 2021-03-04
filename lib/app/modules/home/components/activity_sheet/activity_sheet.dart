import 'dart:ui';

import 'package:get/get.dart';
import 'package:filemanager/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:filemanager/app/modules/activity/components/activity_item/activity_item.dart';
import 'package:filemanager/app/modules/home/controllers/home_controller.dart';

class ActivitySheet extends StatelessWidget {
  const ActivitySheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: NotificationListener<DraggableScrollableNotification>(
        onNotification: (notification) {
          Get.find<HomeController>().changeExtent(notification.extent);
          return true;
        },
        child: DraggableScrollableSheet(
          initialChildSize: 0.2,
          maxChildSize: 1,
          minChildSize: 0.1,
          builder: (BuildContext context, myscrollController) {
            return ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding / 2),
                topRight: Radius.circular(kDefaultPadding / 2),
              ),
              child: BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Obx(
                  () => Container(
                    decoration: BoxDecoration(
                      // ignore: unrelated_type_equality_checks
                      color: (Get.find<HomeController>().extent == 1.0
                          ? kSecondaryColor
                          : Colors.white.withOpacity(0.5)),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(kDefaultPadding / 2),
                        topRight: Radius.circular(kDefaultPadding / 2),
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(kDefaultPadding,
                        kDefaultPadding / 2, kDefaultPadding, kDefaultPadding),
                    // margin: EdgeInsets.symmetric(horizontal: 15.0),
                    child: SingleChildScrollView(
                      controller: myscrollController,
                      child: Column(
                        children: [
                          Container(
                            child: Center(
                              child: // Adobe XD layer: 'Path Copy' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="174.0 9.0 26.6 1.0" ><path transform="translate(174.0, 8.5)" d="M -7.105427357601002e-15 0.5 L 26.55027198791504 0.5" fill="none" fill-opacity="0.3" stroke="#a9c4d4" stroke-width="4" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="round" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: kDefaultPadding),
                            child: Column(
                              children: Get.find<HomeController>()
                                  .data
                                  .map((item) => ActivityItem(item, 0xffF2E9E9))
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
