import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/components/search_widget2.dart';
import 'package:flutter_enter/fahadpages/components/your_product_box.dart';
import 'package:number_paginator/number_paginator.dart';

class MyWatchlist extends StatefulWidget {
  @override
  _MyWatchlistState createState() => _MyWatchlistState();
}

class _MyWatchlistState extends State<MyWatchlist> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
            child: Column(
              children: [
                SearchWidget2(width: width),
                SizedBox(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return YourProductBox();
                    },
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
