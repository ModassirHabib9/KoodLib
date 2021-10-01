import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class BoxWithIconNumber extends StatelessWidget {
  BoxWithIconNumber(
      {required this.pic, required this.count, required this.title});
  String pic, count, title;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Expanded(
      child: Container(
        width: double.infinity,
        // height: !isPortrait ? height * 0.4 : height * 0.2,
        // color: Colors.white60,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(3.0),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/iconsvg/${pic}.svg',
                height: 18,
                width: 18,
              ),
              SizedBox(
                height: 6.0,
              ),
              Text(
                '$count',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '$title',
                style: TextStyle(
                  color: HexColor('#A1A1A1'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
