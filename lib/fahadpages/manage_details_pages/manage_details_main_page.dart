import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/manage_details_pages/manage_details_blogs_and_news.dart';
import 'package:flutter_enter/fahadpages/manage_details_pages/manage_details_my_store.dart';
import 'package:flutter_enter/fahadpages/manage_details_pages/manage_details_podcasts.dart';
import 'package:flutter_enter/fahadpages/manage_details_pages/manage_details_reviews.dart';
import 'package:flutter_enter/fahadpages/manage_details_pages/manage_details_store_details.dart';
import 'package:flutter_enter/fahadpages/manage_details_pages/success_cases.dart';
import 'package:flutter_enter/fahadpages/storemanagement_pages/finance.dart';
import 'package:flutter_enter/fahadpages/storemanagement_pages/permissions.dart';
import 'package:flutter_enter/fahadpages/storemanagement_pages/reviews_page.dart';
import 'package:flutter_enter/fahadpages/storemanagement_pages/store_details.dart';
import 'package:flutter_enter/fahadpages/storemanagement_pages/top_products.dart';

class ManageDetailsMainPage extends StatefulWidget {
  ManageDetailsMainPage(this.itemSelected);
  String itemSelected;
  @override
  _ManageDetailsMainPageState createState() => _ManageDetailsMainPageState();
}

class _ManageDetailsMainPageState extends State<ManageDetailsMainPage> {
  var _items = [
    "Store Details",
    "Reviews",
    "Blogs & News",
    "Podcasts",
    "My Store",
    "Success Cases",
  ];
  TextEditingController _controller = TextEditingController();
  var _itemSelectedValue = "Store Details";
  @override
  void initState() {
    super.initState();
    _controller.text = "0"; // Setting the initial value for the field.
    _itemSelectedValue = widget.itemSelected;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xff00A0DC),
                    borderRadius: BorderRadius.circular(15),
                    // border: Border.all(color: Color(0xffCFCCCC), width: 2),
                  ),
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
                  height: 20.0,
                ),
                Builder(
                  builder: (_) {
                    if (_itemSelectedValue == 'Store Details') {
                      return ManageDetailsStoreDetails(); //1st custom tabBarView
                    } else if (_itemSelectedValue == 'Reviews') {
                      return ManageDetailsReviews(); //2nd tabView
                    } else if (_itemSelectedValue == 'Blogs & News') {
                      return ManageDetailsBlogsAndNews();
                    } //3rd tabView
                    else if (_itemSelectedValue == 'Podcasts') {
                      return ManageDetailsPodcasts();
                    } else if (_itemSelectedValue == 'My Store') {
                      return ManageDetailsMyStore();
                    } else if (_itemSelectedValue == 'Success Cases') {
                      return SuccessCases();
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
