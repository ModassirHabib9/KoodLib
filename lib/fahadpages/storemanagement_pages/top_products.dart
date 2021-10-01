import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/page_number.dart';
import 'package:flutter_enter/fahadpages/components/search_widget2.dart';
import 'package:flutter_enter/fahadpages/components/top_product_box.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:number_paginator/number_paginator.dart';

class TopProducts extends StatefulWidget {
  @override
  _TopProductsState createState() => _TopProductsState();
}

class _TopProductsState extends State<TopProducts> {
  int _numPages = 10;
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SearchWidget2(width: width),
        SizedBox(
          height: 20.0,
        ),
        TopProductBox(height: height, width: width),
        TopProductBox(height: height, width: width),
        TopProductBox(height: height, width: width),
        TopProductBox(height: height, width: width),
        TopProductBox(height: height, width: width),
        TopProductBox(height: height, width: width),
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
        )
      ],
    );
  }
}
