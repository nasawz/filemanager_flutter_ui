import 'package:flutter/material.dart';
import 'package:filemanager/constant.dart';
import 'package:filemanager/util.dart';
import 'package:day/day.dart';

import 'package:filemanager/app/components/dashed_line/dashed_line.dart';

// ignore: must_be_immutable
class ActivityItem extends StatelessWidget {
  Map data;
  Map diffTime = {};
  List bitmaps;
  int length;
  int color;
  ActivityItem(this.data, [this.color]);

  @override
  Widget build(BuildContext context) {
    // Get diff
    final now = Day();
    final createTime = Day.fromString(data['time']);
    diffTime["year"] = now.diff(createTime, 'y');
    diffTime["month"] = now.diff(createTime, 'M');
    diffTime["day"] = now.diff(createTime, 'd');
    diffTime["hour"] = now.diff(createTime, 'h');
    diffTime["minute"] = now.diff(createTime, 'm');
    diffTime["second"] = now.diff(createTime, 's');
    String diffText = diffTime["year"] != 0
        ? "${diffTime["year"].toString()} year ago"
        : diffTime["month"] != 0
            ? "${diffTime["month"].toString()} month ago"
            : diffTime["day"] != 0
                ? "${diffTime["day"].toString()} day ago"
                : diffTime["hour"] != 0
                    ? "${diffTime["hour"].toString()} hour ago"
                    : diffTime["minute"] != 0
                        ? "${diffTime["minute"].toString()} minute ago"
                        : "Few second ago";

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
                  diffText,
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
