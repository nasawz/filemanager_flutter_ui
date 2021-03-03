import 'package:filemanager/app/modules/home/components/storage/pie_chart.dart';
import 'package:filemanager/constant.dart';
import 'package:filemanager/util.dart';
import 'package:flutter/material.dart';

class LeftCard extends StatelessWidget {
  const LeftCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: getProportionateScreenHeight(152),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        child: Center(
            child: Row(
          children: [
            Container(
              // color: Colors.green,
              height: getProportionateScreenHeight(152),
              width: getProportionateScreenWidth(152),
              child: PieChartStorage(),
            ),
            // Spacer(),
            TotalStorage()
          ],
        )),
      ),
    );
  }
}

class TotalStorage extends StatelessWidget {
  const TotalStorage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      padding: EdgeInsets.only(left: kDefaultPadding / 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
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
      ),
    );
  }
}
