import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:day/day.dart';

// class SizeConfig {
//   static MediaQueryData _mediaQueryData;
//   static double screenWidth;
//   static double screenHeight;
//   static double defaultSize;
//   static Orientation orientation;

//   void init(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);
//     screenWidth = _mediaQueryData.size.width;
//     screenHeight = _mediaQueryData.size.height;
//     orientation = _mediaQueryData.orientation;
//   }
// }

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = Get.height;
  // Our designer use iPhone 11 Pro, that's why we use 815.0
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = Get.width;
  // 414 is the layout width that designer use or you can say iPhone 11 Pro width
  return (inputWidth / 375.0) * screenWidth;
}

// Get diff text
String getDiffText(String time) {
  Map diffTime = {};
  // Get last Day Of Month
  DateTime lastDayOfNow = new DateTime.now();
  DateTime lastDayOfMonth =
      new DateTime(lastDayOfNow.year, lastDayOfNow.month, 0);

  // Get diff
  Day now = Day();
  Day createTime = Day.fromString(time);
  diffTime["year"] = now.diff(createTime, 'y');
  diffTime["month"] = now.diff(createTime, 'M');
  diffTime["day"] = now.diff(createTime, 'd');
  diffTime["hour"] = now.diff(createTime, 'h');
  diffTime["minute"] = now.diff(createTime, 'm');
  diffTime["second"] = now.diff(createTime, 's');
  String diffText = (diffTime["year"] != 0 && diffTime["month"] > 12)
      ? "${diffTime["year"].toString()} year ago"
      : (diffTime["month"] != 0 && diffTime["day"] > lastDayOfMonth.day)
          ? "${diffTime["month"].toString()} month ago"
          : (diffTime["day"] != 0 && diffTime["hour"] > 24)
              ? "${diffTime["day"].toString()} day ago"
              : (diffTime["hour"] != 0 && diffTime["minute"] > 60)
                  ? "${diffTime["hour"].toString()} hour ago"
                  : (diffTime["minute"] != 0 && diffTime["second"] > 60)
                      ? "${diffTime["minute"].toString()} minute ago"
                      : "Few second ago";
  return (diffText);
}

// For add free space vertically
class VerticalSpacing extends StatelessWidget {
  const VerticalSpacing({
    Key key,
    this.of = 25,
  }) : super(key: key);

  final double of;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(of),
    );
  }
}
