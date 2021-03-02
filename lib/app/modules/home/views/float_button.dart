import 'package:flutter/material.dart';

class FloatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xbdf195ac),
            offset: Offset(0, 4),
            blurRadius: 20,
          ),
        ],
      ),
      child: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 35.0,
        ),
        backgroundColor: Color(0xFFFE301C),
      ),
    );
  }
}

//  自定义浮框的位置
class CustomFloatingActionButtonLocation extends FloatingActionButtonLocation {
  FloatingActionButtonLocation location;
  double offsetX; // X方向的偏移量
  double offsetY; // Y方向的偏移量
  CustomFloatingActionButtonLocation(this.location, this.offsetX, this.offsetY);

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    Offset offset = location.getOffset(scaffoldGeometry);
    return Offset(offset.dx + offsetX, offset.dy + offsetY);
  }
}
