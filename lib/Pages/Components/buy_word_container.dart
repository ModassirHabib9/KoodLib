import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/renew_page-button.dart';

class BuyWordContainer extends StatelessWidget {
  final dynamic function;
  final String title;
  final bool check;
  const BuyWordContainer({
    Key? key,
    required this.title,
    required this.check,
    required this.function,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: Colors.grey.withOpacity(0.4))),
        child: Column(
          children: [
            Text(
              'Thisisword',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Consequat etiam arcu sit auctor ac pretium ullamcorper pulvinar posuere. Quis neque egestas cum in at. Purus, sed amet, lacinia ac hac erat amet, neque.',
              style: TextStyle(fontSize: 12.3),
            ),
            SizedBox(height: 15),
            check
                ? Text(
                    '\$500',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0077B5),
                        fontSize: 20),
                  )
                : SizedBox(),
            SizedBox(height: 10),
            GestureDetector(
                onTap: function,
                child:
                    RenewPageButton(title: title, check: false, width: width))
          ],
        ),
      ),
    );
  }
}
