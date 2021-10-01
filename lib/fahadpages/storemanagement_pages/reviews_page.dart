import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/page_number.dart';
import 'package:flutter_enter/fahadpages/components/download_all_report_button.dart';
import 'package:flutter_enter/fahadpages/components/review_box_product_user.dart';
import 'package:flutter_enter/fahadpages/components/search_widget.dart';
import 'package:flutter_enter/fahadpages/components/search_widget2.dart';
import 'package:flutter_enter/fahadpages/components/show_entries.dart';
import 'package:flutter_enter/fahadpages/components/show_entries_2.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:number_paginator/number_paginator.dart';

class ReviewsPage extends StatefulWidget {
  @override
  _ReviewsPageState createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  TextEditingController dateinput = TextEditingController();
  TextEditingController _controller = TextEditingController();
  int _numPages = 10;
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          height: 20.0,
        ),
        SearchWidget2(width: width),
        SizedBox(
          height: 12.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: Text(
                        'Date  ',
                        style: TextStyle(
                          color: HexColor('#A1A1A1'),
                        ),
                      ),
                      width: width * 0.15,
                      alignment: Alignment.centerRight,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.0,
                        // color: Colors.white,
                        // padding: EdgeInsets.all(15),
                        child: TextField(
                          controller:
                              dateinput, //editing controller of this TextField
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            fillColor: Colors.white,
                            filled: true,
                            isDense: true,
                            // labelText: "Enter Date", //label text of field
                            suffixIcon: Icon(
                              Icons.calendar_today,
                              color: Colors.blueAccent,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffA1A1A1), width: 1.0),
                                borderRadius: BorderRadius.circular(6.0)),
                          ),

                          readOnly:
                              true, //set it true, so that user will not able to edit text
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(
                                    2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101));

                            if (pickedDate != null) {
                              print(
                                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                              print(
                                  formattedDate); //formatted date output using intl package =>  2021-03-16
                              //you can implement different kind of Date Format here according to your requirement

                              setState(() {
                                dateinput.text =
                                    formattedDate; //set output date to TextField value.
                              });
                            } else {
                              print("Date is not selected");
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SearchWidget(
                width: width,
                width2: 0.15,
              ),
              ShowEntries2(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(child: DownloadAllReportButton()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return ReviewBoxProductUser();
          },
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
          height: 20.0,
        ),
      ],
    );
  }
}
