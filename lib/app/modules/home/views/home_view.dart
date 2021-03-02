import 'dart:ui';

import 'package:filemanager/app/modules/home/components/activity_sheet/activity_sheet.dart';
import 'package:filemanager/app/modules/home/components/file_list/file_list.dart';
import 'package:filemanager/app/modules/home/views/search_bar.dart';
import 'package:filemanager/app/components/float_button/float_button.dart';
import 'package:filemanager/app/modules/home/views/storage.dart';
import 'package:filemanager/constant.dart';
import 'package:filemanager/util.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
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
      floatingActionButton: FloatButton(),
      floatingActionButtonLocation: CustomFloatingActionButtonLocation(
          FloatingActionButtonLocation.endFloat, 0, -90),
      body: Container(
        padding: EdgeInsets.only(top: Get.context.mediaQueryPadding.top),
        child: Stack(children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: 60,
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
                child: SizedBox(
                  height: kDefaultPadding / 2,
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: SearchBar(),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: kDefaultPadding / 2,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 184,
                  width: double.infinity,
                  // decoration: BoxDecoration(color: Colors.red),
                  padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                      vertical: kDefaultPadding / 2),
                  child: Storage(),
                ),
              ),
              FileList()
            ],
          ),
          ActivitySheet(),
        ]),
      ),
    );
  }
}
