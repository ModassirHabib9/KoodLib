import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormContainers extends StatelessWidget {
  final String title;
  final Icon? icon;
  FormContainers({required this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              '$title',
              style: TextStyle(
                  color: Color(0xff0077B5), fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding:
                EdgeInsets.only(left: icon == null ? 20 : 3, top: 7, bottom: 7),
            width: width * 0.85,
            height: 65,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xffCFCCCC), width: 2),
              borderRadius: BorderRadius.circular(7),
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: icon,
                hintText: 'Lorem Ispum',
                hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7)),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
