import 'package:filemanager/app/modules/Images/components/top_tool_bar/top_tool_bar.dart';
import 'package:filemanager/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../controllers/images_controller.dart';

class ImagesView extends GetView<ImagesController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.black,
    ));
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Get.context.mediaQueryPadding.top,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: kSecondaryColor),
              child: Column(
                children: [
                  TopToolBar(),
                  Expanded(
                    child: StaggeredGridView.countBuilder(
                      padding: EdgeInsets.all(kDefaultPadding),
                      crossAxisCount: 4,
                      itemCount: 18,
                      itemBuilder: (BuildContext context, int index) =>
                          index == 0
                              ? Title()
                              : ImageCard(
                                  index: index,
                                ),
                      staggeredTileBuilder: (int index) =>
                          new StaggeredTile.count(2, 1),
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 4.0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // Adobe XD layer: 'Images' (text)
        Text(
      'Images ',
      style: TextStyle(
        fontFamily: 'SFProText-Semibold',
        fontSize: 20,
        color: const Color(0xff383f4b),
      ),
      textAlign: TextAlign.left,
    );
  }
}

class ImageCard extends StatelessWidget {
  final index;
  const ImageCard({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
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
