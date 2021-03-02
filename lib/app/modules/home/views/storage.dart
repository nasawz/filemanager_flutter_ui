import 'package:flutter/material.dart';

import '../../../../util.dart';

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
          child: Text('oooo'),
        ),
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
            child: Text(
              'Storage',
              // maxLines: 1,
              // overflow: TextOverflow.values,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: "SF Pro Display"),
            ),
          ),
        )
      ],
    );
  }
}
