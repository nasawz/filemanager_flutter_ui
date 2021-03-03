import 'package:filemanager/app/components/image_card/image_card.dart';
import 'package:filemanager/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FileList extends StatelessWidget {
  const FileList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          bottom: kDefaultPadding),
      // padding: EdgeInsets.all(kDefaultPadding),
      sliver: SliverStaggeredGrid.countBuilder(
        crossAxisCount: 4,
        itemCount: 18,
        itemBuilder: (BuildContext context, int index) => index == 0
            ? Text(
                'Your Files',
                style: TextStyle(
                  fontFamily: 'SFProText-Semibold',
                  fontSize: 20,
                  color: const Color(0xff383f4b),
                ),
                textAlign: TextAlign.left,
              )
            : ImageCard(
                index: index,
                height: 169,
                path: 'assets/icons/work.jpg',
              ),
        staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
        mainAxisSpacing: kDefaultPadding * 0.6,
        crossAxisSpacing: kDefaultPadding * 0.6,
      ),
    );
  }
}
