import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_enter/Pages/Components/page_number.dart';
import 'package:flutter_enter/fahadpages/components/active_products.dart';
import 'package:flutter_enter/fahadpages/components/payout_complete_box.dart';
import 'package:flutter_enter/fahadpages/components/search_widget.dart';
import 'package:flutter_enter/fahadpages/components/show_entries.dart';
import 'package:flutter_enter/fahadpages/components/show_entries_2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:number_paginator/number_paginator.dart';

class PayoutReport extends StatefulWidget {
  @override
  _PayoutReportState createState() => _PayoutReportState();
}

class _PayoutReportState extends State<PayoutReport> {
  int _numPages = 10;
  int _currentPage = 0;
  List<Color> redColors = [
    Colors.red[800]!,
    Colors.red[700]!,
    Colors.red[600]!,
    Colors.red[400]!,
  ];

  List<Color> greenColors = [
    Colors.green[800]!,
    Colors.green[700]!,
    Colors.green[600]!,
    Colors.green[400]!,
  ];

  List<Color> blueColors = [
    Colors.blue[800]!,
    Colors.blue[700]!,
    Colors.blue[600]!,
    Colors.blue[400]!,
  ];
  var _itemSelectedValue;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    _controller.text = "0"; // Setting the initial value for the field.
  }

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 20.0),
                child: Center(
                  child: Column(
                    children: [
                      ActiveProducts(
                        colorsList: redColors,
                        amount: '12400',
                        icon: 'upwardIcon',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      ActiveProducts(
                        colorsList: greenColors,
                        amount: '7500',
                        icon: 'upwardIcon',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      ActiveProducts(
                        colorsList: blueColors,
                        amount: '1400',
                        icon: 'downwardIcon',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Payout report',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SearchWidget(
                              width: width,
                              width2: 0.15,
                            ),
                            ShowEntries2(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        child: ListView.builder(
                            itemCount: 8,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return PayoutCompletedBox();
                            }),
                      ),
                    ],
                  ),
                ),
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
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
