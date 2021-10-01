import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/page_number.dart';
import 'package:flutter_enter/fahadpages/components/manage_details_blog_news_box.dart';
import 'package:flutter_enter/fahadpages/components/search_widget.dart';
import 'package:flutter_enter/fahadpages/components/search_widget2.dart';
import 'package:flutter_enter/fahadpages/components/submit_for_review_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:number_paginator/number_paginator.dart';

class ManageDetailsBlogsAndNews extends StatefulWidget {
  @override
  _ManageDetailsBlogsAndNewsState createState() =>
      _ManageDetailsBlogsAndNewsState();
}

class _ManageDetailsBlogsAndNewsState extends State<ManageDetailsBlogsAndNews> {
  int _numPages = 10;
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SearchWidget2(
          width: width,
        ),
        MangeDetailsBlogNewsBox(height: height, width: width),
        MangeDetailsBlogNewsBox(height: height, width: width),
        MangeDetailsBlogNewsBox(height: height, width: width),
        Container(
          width: width * 0.7,
          child: NumberPaginator(
            height: 40.0,
            buttonShape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
            buttonSelectedBackgroundColor: Colors.white,
            buttonSelectedForegroundColor: Colors.blueAccent,
            buttonUnselectedForegroundColor: Colors.black,
            numberPages: _numPages,
            onPageChange: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
        ),
      ],
    );
  }
}
