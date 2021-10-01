import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Constants/constants.dart';

class ReviewBox extends StatelessWidget {
  const ReviewBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: containerDecoration,
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/wadood.png'),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'User name',
                            style: TextStyle(
                                color: Color(0xff0077B5),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.star,
                            color: Color(0xff0077B5),
                            size: width * 0.06,
                          ),
                          Icon(Icons.star,
                              color: Color(0xff0077B5), size: width * 0.06),
                          Icon(Icons.star,
                              color: Color(0xff0077B5), size: width * 0.06),
                          Icon(Icons.star,
                              color: Color(0xff0077B5), size: width * 0.06),
                          Icon(Icons.star,
                              color: Color(0xff0077B5), size: width * 0.06),
                        ],
                      ),
                      Image.asset('assets/iconPng/menudot.png'),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rhoncus, massa nec lacus, pulvinar ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
