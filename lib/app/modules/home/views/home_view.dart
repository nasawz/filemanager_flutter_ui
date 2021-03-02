import 'package:filemanager/app/modules/home/components/file_list/file_list.dart';
import 'package:filemanager/app/modules/home/views/search_bar.dart';
import 'package:filemanager/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('HomeView'),
      //   centerTitle: true,
      // ),
      body: Container(
        padding: EdgeInsets.only(top: Get.context.mediaQueryPadding.top),
        child: Stack(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Text('header'),
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                SearchBar(),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Container(
                  height: 184,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Text('storage'),
                ),
                Container(
                  width: double.infinity,
                  height: 1000,
                  decoration: BoxDecoration(color: Colors.red[50]),
                  child: FileList(),
                ),
              ],
            ),
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              initialChildSize: 0.2,
              maxChildSize: 0.8,
              minChildSize: 0.1,
              builder: (BuildContext context, myscrollController) {
                return Container(
                  decoration: BoxDecoration(color: Colors.red),
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
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
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
