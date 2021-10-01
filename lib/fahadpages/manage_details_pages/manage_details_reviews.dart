import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/page_number.dart';
import 'package:flutter_enter/Pages/Components/stars_row.dart';
import 'package:flutter_enter/fahadpages/components/review_box_with_reply.dart';
import 'package:flutter_enter/fahadpages/components/review_box_without_reply.dart';
import 'package:flutter_enter/fahadpages/components/submit_for_review_button.dart';
import 'package:flutter_enter/fahadpages/components/synchronize_service_button.dart';
import 'package:flutter_enter/fahadpages/components/textfield_with_astrick.dart';
import 'package:number_paginator/number_paginator.dart';

class ManageDetailsReviews extends StatefulWidget {
  @override
  _ManageDetailsReviewsState createState() => _ManageDetailsReviewsState();
}

class _ManageDetailsReviewsState extends State<ManageDetailsReviews> {
  int _numPages = 10;
  int _currentPage = 0;
  final TextEditingController textController = TextEditingController();
  var _items = [
    "Connect thired party accounts",
    "Reviews",
    "Blogs & News",
    "Podcasts",
    "My Store",
  ];
  TextEditingController _controller = TextEditingController();
  var _itemSelectedValue = "Connect thired party accounts";
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SynchronizeServiceButton(
          // width: width + width * 0.4,
          onTapFunction: () {},
          // height: height * 0.8,
          roundness: 27,
          title: 'Synchronize with external services',
          fullwidth: true, height: 0.0,
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.lightBlue, width: 2)),
          height: 55,
          width: double.infinity,
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.blue,
              ),
              iconSize: 30,
              dropdownColor: Color(0xff00A0DC),
              style: TextStyle(color: Colors.lightBlue),
              value: _itemSelectedValue,
              isDense: true,
              onChanged: (value) {
                setState(() {
                  _itemSelectedValue = value!;
                });
              },
              items: _items.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,
                      style: TextStyle(color: Colors.lightBlue, fontSize: 15)),
                );
              }).toList(),
            ),
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        SizedBox(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return ReviewBoxWithoutReply();
            },
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
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
