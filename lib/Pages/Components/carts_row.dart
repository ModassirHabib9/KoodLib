import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CartsRow extends StatelessWidget {
  final Icon icon;
  final String title;
  final String subTitle;
  const CartsRow({
    Key? key,
    required this.icon,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 30),
      child: Row(
        children: [
          Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF0077B5),
            size: 30,
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0x80DCE6EA),
                  radius: 35,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: icon,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                Text(
                  subTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Icon(
            Icons.arrow_forward_ios,
            color: Color(0xFF0077B5),
            size: 30,
          ),
        ],
      ),
    );
  }
}
