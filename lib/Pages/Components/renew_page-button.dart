import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Constants/constants.dart';

class RenewPageButton extends StatelessWidget {
  final String title;
  final bool check;
  const RenewPageButton({
    Key? key,
    required this.title,
    required this.check,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14),
        width: width * 0.67,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: check ? backgroundColor : Color(0xff00A0DC),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color(0xff00A0DC), width: 2),
        ),
        child: Text(
          title,
          style: TextStyle(color: check ? Color(0xff00A0DC) : Colors.white),
        ),
      ),
    );
  }
}
