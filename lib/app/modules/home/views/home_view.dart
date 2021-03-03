import 'dart:ui';

import 'package:filemanager/app/modules/home/components/activity_sheet/activity_sheet.dart';
import 'package:filemanager/app/modules/home/components/file_list/file_list.dart';
import 'package:filemanager/app/components/search_bar/search_bar.dart';
import 'package:filemanager/app/components/float_button/float_button.dart';
import 'package:filemanager/app/modules/home/components/storage/storage.dart';
import 'package:filemanager/constant.dart';
import 'package:filemanager/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.black,
    ));
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    // SystemUiOverlayStyle systemUiOverlayStyle =
    //     SystemUiOverlayStyle(statusBarColor: Colors.green);
    // SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('HomeView'),
      //   centerTitle: true,
      // ),

      floatingActionButton: FloatButton(),
      floatingActionButtonLocation: CustomFloatingActionButtonLocation(
          FloatingActionButtonLocation.endFloat, 0, -90),
      body: Container(
        // color: Colors.green,
        padding: EdgeInsets.only(top: Get.context.mediaQueryPadding.top),
        child: Stack(children: [
          // Container(
          //   color: Colors.red,
          //   height: 90,
          //   // height: Get.context.mediaQueryPadding.top,
          // ),
          Container(
            color: kSecondaryColor,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    height: 60,
                    color: kBackgroundColor,
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(kDefaultPadding),
                        right: getProportionateScreenWidth(kDefaultPadding)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Hi,Sara',
                            style: TextStyle(
                              fontFamily: 'SFProDisplay-Semibold',
                              fontSize: kHeroFontSize,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff383838),
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Container(
                              width: getProportionateScreenWidth(45),
                              height: getProportionateScreenWidth(45),
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: const Color(0xffadc8f6),
                                  offset: Offset(0, 4),
                                  blurRadius: 20,
                                )
                              ]),
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/images/header_image.jpeg',
                                  width: getProportionateScreenWidth(40),
                                  height: getProportionateScreenWidth(40),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    color: kBackgroundColor,
                    child: SizedBox(
                      height: kDefaultPadding / 2,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    color: kBackgroundColor,
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: SearchBar(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    color: kBackgroundColor,
                    child: SizedBox(
                      height: kDefaultPadding / 2,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    // decoration: BoxDecoration(color: Colors.red),
                    padding: EdgeInsets.only(
                        left: kDefaultPadding,
                        right: kDefaultPadding,
                        top: kDefaultPadding / 2,
                        bottom: kDefaultPadding / 2 + 16),
                    // padding: EdgeInsets.symmetric(
                    //     horizontal: kDefaultPadding,
                    //     vertical: kDefaultPadding / 2),
                    decoration: BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(50))),
                    child: Storage(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: kDefaultPadding * 1.5,
                    // color: Colors.green,
                    color: kBackgroundColor,
                    child: Container(
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(50))),
                    ),
                  ),
                ),
                FileList()
              ],
            ),
          ),
          ActivitySheet(),
        ]),
      ),
    );
  }
}
