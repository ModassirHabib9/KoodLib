import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/page_number.dart';
import 'package:flutter_enter/fahadpages/components/store_manager_box.dart';
import 'package:flutter_enter/fahadpages/dashboard_fragment/store_management2.dart';
import 'package:flutter_enter/fahadpages/storemanagement_pages/add_store_manager.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:number_paginator/number_paginator.dart';

class Permissions extends StatefulWidget {
  @override
  _PermissionsState createState() => _PermissionsState();
}

class _PermissionsState extends State<Permissions> {
  bool _isExpanded_storeManager = false;
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
        SizedBox(
          width: width * 10,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8.0),
              fillColor: Colors.white,
              filled: true,
              isDense: true,
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.grey),
              // labelText: "Enter Date", //label text of field
              prefixIcon: Icon(
                Icons.search,
                color: Colors.blueAccent,
              ),
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: HexColor('#CFCCCC'), width: 32.0),
                  borderRadius: BorderRadius.circular(3.0)),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 10.0,
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => StoreManagement2()));
              },
              child: Container(
                width: width * 0.7,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(8.0),
                  // border: Border.all(
                  //   color: Colors.lightBlueAccent,
                  //   width: 2.0,
                  // ),
                ),
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddStoreManager()));
                  },
                  child: Text(
                    'Add Store Manager',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              storeManagerBox(
                  isExpanded_storeManager: _isExpanded_storeManager),
              storeManagerBox(
                  isExpanded_storeManager: _isExpanded_storeManager),
              storeManagerBox(
                  isExpanded_storeManager: _isExpanded_storeManager),
              storeManagerBox(
                  isExpanded_storeManager: _isExpanded_storeManager),
              storeManagerBox(
                  isExpanded_storeManager: _isExpanded_storeManager),
              storeManagerBox(
                  isExpanded_storeManager: _isExpanded_storeManager),
              Center(
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
                    numberPages: _numPages,
                    onPageChange: (int index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
