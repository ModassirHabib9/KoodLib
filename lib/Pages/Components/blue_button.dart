import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final String title;
  const BlueButton({
    Key? key,
    required this.title,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff00A0DC),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        '$title',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
