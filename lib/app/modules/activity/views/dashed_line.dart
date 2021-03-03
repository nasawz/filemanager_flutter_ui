import 'package:flutter/material.dart';

class CYDashedLine extends StatelessWidget {
  final Axis axis; // 方向
  final double width; //宽度
  final double height; //高度
  final int count; // 个数，密度
  final Color color;
  CYDashedLine(
      {this.axis = Axis.horizontal,
      this.width = 1,
      this.height = 1,
      this.count = 10,
      this.color = Colors.black});
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: axis,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(count, (_) {
        return SizedBox(
          width: width,
          height: height,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(width)),
          ),
        );
      }),
    );
  }
}
