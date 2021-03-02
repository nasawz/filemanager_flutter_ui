import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final index;
  const ImageCard({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 164,
      color: Colors.green,
      child: new Center(
        child: new CircleAvatar(
          backgroundColor: Colors.white,
          child: new Text('$index'),
        ),
      ),
    );
  }
}
