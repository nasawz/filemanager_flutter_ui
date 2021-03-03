import 'dart:ui';

import 'package:filemanager/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:filemanager/app/modules/activity/components/activity_item/activity_item.dart';

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

class ActivitySheet extends StatelessWidget {
  const ActivitySheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
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
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
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
                          children: data
                              .map((item) => ActivityItem(item, 0xffF2E9E9))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
