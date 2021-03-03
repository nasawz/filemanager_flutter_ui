import 'package:filemanager/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: getProportionateScreenHeight(45),
        width: getProportionateScreenWidth(312),
        child: TextField(
            decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0x00FF0000)),
              borderRadius: BorderRadius.all(Radius.circular(100))),
          hintText: 'Search',
          hintStyle: TextStyle(
              fontSize: 14,
              fontFamily: "SF Pro Display",
              color: Color(0xff383838)),
          contentPadding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, horizontal: kDefaultPadding / 2),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0x00000000)),
              borderRadius: BorderRadius.all(Radius.circular(100))),
          // prefixIcon: Icon(
          //   Icons.search,
          //   color: Color(0xff383F4B),
          // )
          prefixIcon: Container(
            // color: Colors.red,
            padding: EdgeInsets.all(kDefaultPadding / 1.6),
            child: new SvgPicture.asset(
              "assets/icons/search.svg",
              fit: BoxFit.cover,
            ),
          ),
        )));
  }
}
