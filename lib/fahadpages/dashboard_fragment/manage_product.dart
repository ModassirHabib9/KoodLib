import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/components/box_with_only_icon_title.dart';
import 'package:flutter_enter/fahadpages/components/search_widget.dart';
import 'package:flutter_enter/fahadpages/components/show_entries.dart';
import 'package:flutter_enter/fahadpages/components/show_entries_2.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:number_paginator/number_paginator.dart';

import '../components/box_with_icon_number.dart';

class ManageProduct extends StatefulWidget {
  @override
  _ManageProductState createState() => _ManageProductState();
}

class _ManageProductState extends State<ManageProduct> {
  final textController = TextEditingController();
  var _items = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];

  var _itemSelectedCategories;
  var _itemSelectedStatus;
  var _itemSelectedPrice;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    _controller.text = "0"; // Setting the initial value for the field.
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BoxWithIconNumber(
                      pic: 'ActiveProduct',
                      title: 'Active Products',
                      count: '1400',
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    BoxWithIconNumber(
                        pic: 'PendingProduct',
                        count: '2',
                        title: 'Pending Products'),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BoxWithIconNumber(
                      pic: 'DraftProduct',
                      title: 'Draft Product',
                      count: '10',
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    BoxWithIconNumber(
                        pic: 'FreeProduct',
                        count: '142',
                        title: 'Free Products'),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BoxWithIconNumber(
                      pic: 'PaidProduct',
                      title: 'Paid Products',
                      count: '100',
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    // BoxWithIconNumber(
                    //     pic: 'noOfPodcasts',
                    //     count: '410',
                    //     title: 'Number of podcasts'),
                    BoxWithOnlyIconTitle(
                      pic: 'AddNewProduct',
                      title: 'Add New Product',
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    'Product List',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Text(
                              'Categories  ',
                              style: TextStyle(
                                color: HexColor('#A1A1A1'),
                              ),
                            ),
                            width: width * 0.2,
                            alignment: Alignment.centerRight,
                          ),
                          Expanded(
                            child: Container(
                              height: 40.0,
                              // width: width * 0.6,
                              child: FormField<String>(
                                builder: (FormFieldState<String> state) {
                                  return InputDecorator(
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(8.0),
                                        fillColor: Colors.white,
                                        filled: true,
                                        // labelStyle: textStyle,
                                        errorStyle: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 16.0),
                                        hintText: 'Please select expense',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0))),
                                    // isEmpty: _currentSelectedValue == '',
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: _itemSelectedPrice,
                                        isDense: true,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            _itemSelectedPrice = newValue;
                                            state.didChange(newValue);
                                          });
                                        },
                                        items: _items.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Text(
                              'Status  ',
                              style: TextStyle(
                                color: HexColor('#A1A1A1'),
                              ),
                            ),
                            width: width * 0.2,
                            alignment: Alignment.centerRight,
                          ),
                          Expanded(
                            child: Container(
                              // width: width * 0.6,
                              height: 40.0,
                              child: FormField<String>(
                                builder: (FormFieldState<String> state) {
                                  return InputDecorator(
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(8.0),
                                        fillColor: Colors.white,
                                        filled: true,
                                        // labelStyle: textStyle,
                                        errorStyle: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 16.0),
                                        hintText: 'Please select expense',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0))),
                                    // isEmpty: _currentSelectedValue == '',
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: _itemSelectedPrice,
                                        isDense: true,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            _itemSelectedPrice = newValue;
                                            state.didChange(newValue);
                                          });
                                        },
                                        items: _items.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Text(
                              'Price  ',
                              style: TextStyle(
                                color: HexColor('#A1A1A1'),
                              ),
                            ),
                            width: width * 0.2,
                            alignment: Alignment.centerRight,
                          ),
                          Expanded(
                            child: Container(
                              // width: width * 0.6,
                              height: 40.0,
                              child: FormField<String>(
                                builder: (FormFieldState<String> state) {
                                  return InputDecorator(
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(8.0),
                                        fillColor: Colors.white,
                                        filled: true,
                                        // labelStyle: textStyle,
                                        errorStyle: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 16.0),
                                        hintText: 'Please select expense',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0))),
                                    // isEmpty: _currentSelectedValue == '',
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: _itemSelectedPrice,
                                        isDense: true,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            _itemSelectedPrice = newValue;
                                            state.didChange(newValue);
                                          });
                                        },
                                        items: _items.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SearchWidget(
                        width: width,
                        width2: 0.2,
                      ),
                      // ShowEntries(width: width, controller: _controller),
                      ShowEntries2(
                        width2: 0.2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TitleCategoryPriceBox(width: width),
                SizedBox(
                  height: 20.0,
                ),
                TitleCategoryPriceBox(width: width),
                SizedBox(
                  height: 20.0,
                ),
                TitleCategoryPriceBox(width: width),
                SizedBox(
                  height: 20.0,
                ),
                TitleCategoryPriceBox(width: width),
                SizedBox(
                  height: 20.0,
                ),
                TitleCategoryPriceBox(width: width),
                SizedBox(
                  height: 20.0,
                ),
                TitleCategoryPriceBox(width: width),
                SizedBox(
                  height: 20.0,
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
                    numberPages: 10,
                    onPageChange: (int index) {
                      setState(() {
                        // _currentPage = index;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TitleCategoryPriceBox extends StatelessWidget {
  const TitleCategoryPriceBox({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(6.0),
        border: Border.all(color: Color(0xffA1A1A1), width: 0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Very long name title',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Partner: By Koolib',
                  style: TextStyle(color: HexColor('#A1A1A1')),
                ),
                Container(
                  height: 30,
                  width: width * 0.18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff29CC97),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Active',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3.0,
            ),
            RichText(
              text: new TextSpan(
                style: new TextStyle(
                  fontSize: 16.5,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  new TextSpan(
                    text: 'Category:',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  new TextSpan(
                    text: 'Canadian Citizenship',
                    style: TextStyle(
                      color: Color(0xff0077B5),
                      fontSize: 14.0,
                    ),
                  ),
                  new TextSpan(
                    text: 'Price:',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  new TextSpan(
                    text: '\$150',
                    style: TextStyle(
                      color: Color(0xff0077B5),
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(
              'Total purchased: 0',
              style: TextStyle(color: HexColor('#A1A1A1')),
            ),
          ],
        ),
      ),
    );
  }
}
