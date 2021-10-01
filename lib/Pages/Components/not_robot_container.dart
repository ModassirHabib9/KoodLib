import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotRobotContainer extends StatelessWidget {
  const NotRobotContainer({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 70,
      width: width * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0xffCFCCCC), width: 1),
      ),
      child: Row(
        children: [
          Icon(
            Icons.check,
            color: Colors.green[700],
            size: 40,
          ),
          SizedBox(width: 2),
          Text(
            'i\'m not a robot',
            style: TextStyle(color: Colors.black.withOpacity(0.6)),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/iconPng/repCaptcha.png',
                height: 35,
                width: 35,
              ),
            ],
          )
        ],
      ),
    );
  }
}
