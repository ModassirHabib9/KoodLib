import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/components/manage_details_mystore_box.dart';
import 'package:flutter_enter/fahadpages/components/search_widget2.dart';

class ManageDetailsMyStore extends StatefulWidget {
  @override
  _ManageDetailsMyStoreState createState() => _ManageDetailsMyStoreState();
}

class _ManageDetailsMyStoreState extends State<ManageDetailsMyStore> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SearchWidget2(width: width),
        ManageDetailsMyStoreBox(),
        ManageDetailsMyStoreBox(),
        ManageDetailsMyStoreBox(),
      ],
    );
  }
}
