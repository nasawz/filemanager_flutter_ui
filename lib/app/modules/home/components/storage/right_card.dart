import 'package:filemanager/constant.dart';
import 'package:filemanager/util.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class RightCard extends StatelessWidget {
  const RightCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(43),
      height: getProportionateScreenHeight(108),
      decoration: BoxDecoration(
          color: Color(0xffFF629F),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          )),
      child: Transform.translate(
        offset: Offset(getProportionateScreenWidth(48), 0),
        child: Transform.rotate(
          angle: -90.0 * math.pi / 180,
          child: OverflowBox(
            alignment: Alignment.center,
            maxWidth: getProportionateScreenWidth((48 + 20).toDouble()),
            maxHeight: getProportionateScreenHeight(108),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
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
    );
  }
}
