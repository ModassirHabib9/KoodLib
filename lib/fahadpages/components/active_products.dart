import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveProducts extends StatelessWidget {
  ActiveProducts(
      {required this.colorsList, required this.amount, required this.icon});

  List<Color> colorsList;
  String amount;
  String icon;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 100.0,
      // width: width * 0.7,
      decoration: BoxDecoration(
        color: Colors.red,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: colorsList,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 45.0,
          vertical: 20.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: SvgPicture.asset('assets/iconsvg/${icon}.svg'),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    '\$${amount}',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0),
                  ),
                  Text(
                    'Active products',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
