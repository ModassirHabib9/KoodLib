import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'add_new_product3.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class AddNewProduct2 extends StatefulWidget {
  @override
  _AddNewProduct2State createState() => _AddNewProduct2State();
}

class _AddNewProduct2State extends State<AddNewProduct2> {
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#E5E5E5'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, left: 12.0, right: 12.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          Text('Check if this is a free product'),
                        ],
                      ),
                      Row(
                        // mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Product price',
                            style: TextStyle(
                                color: Colors.lightBlue[600],
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: Container(
                              width: 150.0,
                              child: Center(
                                child: TextField(
                                  minLines: 1,
                                  controller: textController,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(8.0),
                                    fillColor: Colors.white,
                                    filled: true,
                                    // hintText: 'lorem ipsum',
                                    hintStyle: TextStyle(
                                      color: Colors.blueGrey[200],
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: BorderSide(
                                        color: Colors.blueGrey.shade400,
                                      ),
                                    ),
                                    isDense: true,
                                    // prefix: Text(
                                    //   '\$',
                                    //   textAlign: TextAlign.right,
                                    //   textDirection: TextDirection.rtl,
                                    // ),
                                    // prefixStyle: TextStyle(color: Colors.transparent),
                                    prefixIcon: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 12.0),
                                      child: Text(
                                        "\$",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                    prefixIconConstraints: BoxConstraints(
                                        minWidth: 0, minHeight: 0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          Text('Check if this product has a discount'),
                        ],
                      ),
                      Row(
                        // mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Discount price',
                            style: TextStyle(
                                color: Colors.lightBlue[600],
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: Container(
                              child: Center(
                                child: TextField(
                                  minLines: 1,
                                  controller: textController,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(8.0),
                                    fillColor: Colors.white,
                                    filled: true,
                                    // hintText: 'lorem ipsum',
                                    hintStyle: TextStyle(
                                      color: Colors.blueGrey[200],
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: BorderSide(
                                        color: Colors.blueGrey.shade400,
                                      ),
                                    ),
                                    isDense: true,
                                    // prefix: Text(
                                    //   '\$',
                                    //   textAlign: TextAlign.right,
                                    //   textDirection: TextDirection.rtl,
                                    // ),
                                    // prefixStyle: TextStyle(color: Colors.transparent),
                                    prefixIcon: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 12.0),
                                      child: Text(
                                        "\$",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                    prefixIconConstraints: BoxConstraints(
                                        minWidth: 0, minHeight: 0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          Text('Tax free product'),
                        ],
                      ),
                      Row(
                        // mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Tax rate',
                            style: TextStyle(
                                color: Colors.lightBlue[600],
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: Container(
                              child: Center(
                                child: TextField(
                                  minLines: 1,
                                  controller: textController,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(8.0),
                                    fillColor: Colors.white,
                                    filled: true,
                                    // hintText: 'lorem ipsum',
                                    hintStyle: TextStyle(
                                      color: Colors.blueGrey[200],
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: BorderSide(
                                        color: Colors.blueGrey.shade400,
                                      ),
                                    ),
                                    isDense: true,
                                    // prefix: Text(
                                    //   '\$',
                                    //   textAlign: TextAlign.right,
                                    //   textDirection: TextDirection.rtl,
                                    // ),
                                    // prefixStyle: TextStyle(color: Colors.transparent),
                                    prefixIcon: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 12.0),
                                      child: Text(
                                        "\$",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                    prefixIconConstraints: BoxConstraints(
                                        minWidth: 0, minHeight: 0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0,
                                  left: 40.0,
                                  right: 40.0,
                                  bottom: 20.0),
                              child: SvgPicture.asset(
                                  'assets/iconsvg/vectorleft2.svg'),
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddNewProduct3()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0,
                                  left: 40.0,
                                  right: 40.0,
                                  bottom: 20.0),
                              child: SvgPicture.asset(
                                  'assets/iconsvg/vectorright.svg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
