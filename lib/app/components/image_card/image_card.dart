import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageCard extends StatelessWidget {
  final index;
  final double height;
  final String path;
  final String route;
  const ImageCard({
    Key key,
    this.index,
    this.height,
    this.path,
    this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
          color: const Color(0xffffffff),
          boxShadow: [
            BoxShadow(
              color: const Color(0x0a000000),
              offset: Offset(0, 8),
              blurRadius: 17,
            ),
          ],
        ),
        height: height,
        width: 145.0,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(route);
              },
              child: Container(
                  height: 109.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14.0),
                          topRight: Radius.circular(14.0)),
                      image: DecorationImage(
                          image: AssetImage(path), fit: BoxFit.cover))),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(
                              "title",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Container(
                                padding: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "1.1 GB",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: Color.fromRGBO(56, 63, 75, 1)),
                                  overflow: TextOverflow.ellipsis,
                                ))
                          ])),
                      Container(
                          width: 15.0,
                          height: 20.0,
                          child: PopupMenuButton(
                            padding: EdgeInsets.all(0),
                            elevation: 0,
                            icon: Icon(Icons.more_vert),
                            itemBuilder: (context) {
                              return <PopupMenuEntry<String>>[
                                PopupMenuItem<String>(
                                    value: "favorites", child: Text('收藏')),
                                PopupMenuItem<String>(
                                    value: "shield", child: Text('屏蔽')),
                                PopupMenuItem<String>(
                                    value: "report", child: Text('举报')),
                                PopupMenuItem<String>(
                                    value: "not interested",
                                    child: Text('不感兴趣')),
                              ];
                            },
                          )),
                    ]),
              ),
            ),
          ],
        ));
  }
}
