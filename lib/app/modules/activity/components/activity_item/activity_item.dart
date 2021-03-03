import 'package:flutter/material.dart';
import 'package:filemanager/constant.dart';
import 'package:filemanager/util.dart';

import 'package:filemanager/app/components/dashed_line/dashed_line.dart';

// ignore: must_be_immutable
class ActivityItem extends StatelessWidget {
  Map data;
  List bitmaps;
  int length;
  int color;
  ActivityItem(this.data, [this.color]);

  @override
  Widget build(BuildContext context) {
    length = data['bitmaps'].length;
    bitmaps = data['bitmaps'].map((element) => element).toList();
    if (data['bitmaps'].length > 4) {
      bitmaps.removeRange(3, data['bitmaps'].length);
      bitmaps.add('assets/images/header_image.jpeg');
    }
    return Container(
      width: getProportionateScreenWidth(314.0),
      height: getProportionateScreenWidth(170.0),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: getProportionateScreenWidth(22.0),
                height: getProportionateScreenWidth(22.0),
                decoration: BoxDecoration(
                  color: data['status'] == 1
                      ? Color(0xff383838)
                      : Color(0xffffffff),
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              Container(
                width: getProportionateScreenWidth(22.0),
                height: getProportionateScreenWidth(148.0),
                child: CYDashedLine(
                  axis: Axis.vertical,
                  height: 8,
                  count: 10,
                  color: Color(0xffD8D8D8),
                ),
              ),
            ],
          ),
          SizedBox(
            width: getProportionateScreenWidth(20.0),
          ),
          Column(
            children: [
              Container(
                width: getProportionateScreenWidth(270.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  getDiffText(data['time']),
                  style: TextStyle(
                    color: data['status'] == 1
                        ? Color(0xff383838)
                        : Color(0xffcccccc),
                    fontFamily: 'SFProText-Medium',
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.left,
                ),
                // Adobe XD layer: 'Few seconds ago' (text)
              ),
              Container(
                width: getProportionateScreenWidth(270.0),
                padding: EdgeInsets.fromLTRB(
                    0, getProportionateScreenWidth(31.0), 0, 0),
                child: Container(
                  width: getProportionateScreenWidth(271.0),
                  height: getProportionateScreenWidth(71.0),
                  decoration: BoxDecoration(
                    color: color != null ? Color(color) : kBackgroundColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: bitmaps
                        .asMap()
                        .keys
                        .map<Widget>(
                          (k) => Container(
                            alignment: Alignment.center,
                            child: Text(
                              ((length > 4 && k == 3)
                                  ? '${(length - 3).toString()} +'
                                  : ''),
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: 'SFProText-Medium',
                                fontSize: 16,
                              ),
                            ),
                            width: getProportionateScreenWidth(50.0),
                            height: getProportionateScreenWidth(50.0),
                            decoration: BoxDecoration(
                              color: (length > 4 && k == 3)
                                  ? Color(0xffFF629F)
                                  : null,
                              image: (length > 4 && k == 3)
                                  ? null
                                  : DecorationImage(
                                      image: AssetImage(data['bitmaps'][k]),
                                      fit: BoxFit.cover,
                                    ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
