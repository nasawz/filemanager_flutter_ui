import 'package:filemanager/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/activity_controller.dart';

class ActivityView extends GetView<ActivityController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.black,
    ));

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Get.context.mediaQueryPadding.top,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: kBackgroundColor),
              child: Container(
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(50.0),
                      topRight: const Radius.circular(50.0),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 100,
                        width: 240,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Last Activity',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Semibold',
                            fontSize: 30,
                            // color: const Color(0xff383838),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        height: 650,
                        width: 100,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
