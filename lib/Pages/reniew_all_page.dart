import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/page_number.dart';
import 'package:flutter_enter/Pages/Components/renew_page-button.dart';
import 'package:flutter_enter/Pages/Constants/constants.dart';
import 'package:number_paginator/number_paginator.dart';

import 'Components/buy_word_container.dart';
import 'Components/search_box.dart';

class RenewAllPage extends StatelessWidget {
  const RenewAllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SearchBox(),
                  SizedBox(height: 10),
                  RenewPageButton(
                      title: 'Show details', check: true, width: width),
                  RenewPageButton(
                      title: 'Renew all', check: false, width: width),
                  RenewPageButton(
                      title: 'Lorem Ispum', check: false, width: width),
                  SizedBox(height: 20),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      BuyWordContainer(
                        title: 'Buy word',
                        check: true,
                        width: width,
                        function: () {
                          Navigator.pushNamed(context, '/Renew Word');
                        },
                      ),
                      BuyWordContainer(
                        title: 'Buy word',
                        check: true,
                        width: width,
                        function: () {
                          Navigator.pushNamed(context, '/Renew Word');
                        },
                      ),
                      BuyWordContainer(
                        title: 'Buy word',
                        check: true,
                        width: width,
                        function: () {
                          Navigator.pushNamed(context, '/Renew Word');
                        },
                      ),
                      BuyWordContainer(
                        title: 'Buy word',
                        check: true,
                        width: width,
                        function: () {
                          Navigator.pushNamed(context, '/Renew Word');
                        },
                      ),
                      BuyWordContainer(
                        title: 'Buy word',
                        check: true,
                        width: width,
                        function: () {
                          Navigator.pushNamed(context, '/Renew Word');
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
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
                          // setState(() {
                          //   _currentPage = index;
                          // });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ));
  }
}
