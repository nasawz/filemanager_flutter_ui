import 'package:flutter/material.dart';

import './dashed_line.dart';

class ActivityItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 314.0,
          height: 170.0,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 22.0,
                    height: 22.0,
                    decoration: BoxDecoration(
                      color: Color(0xff383838),
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  Container(
                    width: 22.0,
                    height: 148.0,
                    child: CYDashedLine(
                      axis: Axis.vertical,
                      height: 8,
                      count: 10,
                      color: Color(0xffD8D8D8),
                    ),
                  ),
                ],
              ),
              Container(
                width: 20.0,
              ),
              Column(
                children: [
                  Container(
                    child: Text('标题'),
                  ),
                  Container(
                    child: Text('图片'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
