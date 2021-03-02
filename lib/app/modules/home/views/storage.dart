import 'package:filemanager/app/components/pie_chart.dart';
import 'package:filemanager/constant.dart';
import 'package:flutter/material.dart';

import '../../../../util.dart';
import 'dart:math' as math;

class Storage extends StatelessWidget {
  const Storage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: getProportionateScreenWidth(284),
            height: getProportionateScreenHeight(152),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Container(
              // color: Colors.red,
              // padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.only(right: kDefaultPadding),
              child: Row(
                children: [
                  Container(
                    // color: Colors.green,
                    height: 150,
                    width: 150,
                    // padding: EdgeInsets.symmetric(vertical: 10),
                    child: PieChartSample2(),
                  ),
                  Spacer(),
                  TotalStorage()
                ],
              ),
            )),
        Positioned(
          bottom: 0,
          right: 0,
          // left: getProportionateScreenWidth(268),
          child: Container(
            width: getProportionateScreenWidth(48),
            height: getProportionateScreenHeight(108),
            decoration: BoxDecoration(
                color: Color(0xffFF629F),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5))),
            child: Transform.translate(
              offset: Offset(getProportionateScreenWidth(48), 0),
              child: Transform.rotate(
                angle: -90.0 * math.pi / 180,
                child: OverflowBox(
                  alignment: Alignment.center,
                  maxWidth: getProportionateScreenWidth((48 + 20).toDouble()),
                  maxHeight: getProportionateScreenHeight(108),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
                    child: Text(
                      'Storage',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: "SF Pro Display"),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class TotalStorage extends StatelessWidget {
  const TotalStorage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Free Storage",
          style: TextStyle(
              fontFamily: "SF Pro Display",
              fontSize: 15,
              color: Color(0xff383F4B).withOpacity(0.5),
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        Text("2.4 GB",
            style: TextStyle(
                fontFamily: "SF Pro Display",
                fontSize: 28,
                color: Color(0xff383F4B),
                fontWeight: FontWeight.w600)),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        Text("of 12 GB",
            style: TextStyle(
                fontFamily: "SF Pro Display",
                fontSize: 14,
                color: Color(0xff383F4B).withOpacity(0.3),
                fontWeight: FontWeight.w600))
      ],
    );
  }
}
