import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/page_number.dart';
import 'package:flutter_enter/fahadpages/components/review_box_product_user.dart';
import 'package:flutter_enter/fahadpages/components/show_entries.dart';
import 'package:flutter_enter/fahadpages/storemanagement_pages/finance.dart';
import 'package:flutter_enter/fahadpages/storemanagement_pages/permissions.dart';
import 'package:flutter_enter/fahadpages/storemanagement_pages/reviews_page.dart';
import 'package:flutter_enter/fahadpages/storemanagement_pages/store_details.dart';
import 'package:flutter_enter/fahadpages/storemanagement_pages/top_products.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class StoreManagement2 extends StatefulWidget {
  @override
  _StoreManagement2State createState() => _StoreManagement2State();
}

class _StoreManagement2State extends State<StoreManagement2> {
  var _itemSelectedValue = "Store Details";
  bool _isExpanded_topProducts = false;
  final textController = TextEditingController();
  File? _pickedImage;
  var _items = [
    "Store Details",
    "Finance",
    "Permissions",
    "Reviews",
    "Top Products",
  ];
  TextEditingController _controller = TextEditingController();
  TextEditingController dateinput = TextEditingController();
  @override
  void initState() {
    super.initState();
    _controller.text = "0"; // Setting the initial value for the field.
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Color(0xff00A0DC),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xffCFCCCC), width: 2)),
                  height: 55,
                  width: double.infinity,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                      iconSize: 30,
                      dropdownColor: Color(0xff00A0DC),
                      style: TextStyle(color: Colors.blue),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Builder(
                  builder: (_) {
                    if (_itemSelectedValue == 'Store Details') {
                      return StoreDetails(); //1st custom tabBarView
                    } else if (_itemSelectedValue == 'Finance') {
                      return Finance(); //2nd tabView
                    } else if (_itemSelectedValue == 'Permissions') {
                      return Permissions();
                    } //3rd tabView
                    else if (_itemSelectedValue == 'Reviews') {
                      return ReviewsPage();
                    } else if (_itemSelectedValue == 'Top Products') {
                      return TopProducts();
                    } else {
                      return Text('h');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
