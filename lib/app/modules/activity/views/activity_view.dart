import 'package:filemanager/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/activity_controller.dart';
import 'package:filemanager/app/modules/activity/components/activity_item/activity_item.dart';
import 'package:filemanager/util.dart';

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
              child: SingleChildScrollView(
                // padding: EdgeInsets.all(30.0),
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
                          height: getProportionateScreenWidth(60),
                          alignment: Alignment.center,
                          child: Container(
                            width: getProportionateScreenWidth(40),
                            height: getProportionateScreenWidth(5),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getProportionateScreenWidth(40),
                          width: getProportionateScreenWidth(240),
                          margin: EdgeInsets.fromLTRB(
                              0, 0, 0, getProportionateScreenWidth(40)),
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
                        Column(
                          children:
                              data.map((item) => ActivityItem(item)).toList(),
                        ),
                      ],
                    ),
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
