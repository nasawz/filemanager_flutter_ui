import 'package:flutter/material.dart';

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
                    child: Text('原点'),
                  ),
                  Container(
                    child: Text('虚线'),
                  ),
                ],
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
