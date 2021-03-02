import 'dart:ui';

import 'package:filemanager/constant.dart';
import 'package:flutter/material.dart';

class ActivitySheet extends StatelessWidget {
  const ActivitySheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DraggableScrollableSheet(
        initialChildSize: 0.2,
        maxChildSize: 1,
        minChildSize: 0.1,
        builder: (BuildContext context, myscrollController) {
          return ClipRect(
            child: BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding / 2),
                    topRight: Radius.circular(kDefaultPadding / 2),
                  ),
                ),
                padding: EdgeInsets.all(kDefaultPadding),
                // margin: EdgeInsets.symmetric(horizontal: 15.0),
                child: SingleChildScrollView(
                  controller: myscrollController,
                  child: Column(
                    children: [
                      Container(
                        height: 150.0,
                        color: Colors.deepOrangeAccent,
                        child: Center(
                          child: Text(
                            'Container 1',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 150.0,
                        color: Colors.orangeAccent,
                        child: Center(
                          child: Text(
                            'Container 2',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 150.0,
                        color: Colors.indigoAccent,
                        child: Center(
                          child: Text(
                            'Container 3',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
