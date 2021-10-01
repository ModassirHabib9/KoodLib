import 'package:flutter/material.dart';

class AboutYourSelfContainer extends StatelessWidget {
  final String title;
  const AboutYourSelfContainer({
    Key? key,
    required this.title,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height * 0.5,
      width: width * 0.85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Color(0xffCFCCCC),
          width: 2,
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: title,
          hintStyle: TextStyle(
            color: Color(0xffCFCCCC),
          ),
        ),
      ),
    );
  }
}
