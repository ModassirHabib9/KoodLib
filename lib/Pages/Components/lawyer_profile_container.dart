import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LawyerProfileContainer extends StatelessWidget {
  final String job;
  final String image;
  final dynamic function;
  const LawyerProfileContainer({
    Key? key,
    required this.function,
    required this.job,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        width: 200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              height: 171,
              width: 189,
            ),
            SizedBox(height: 10),
            Text(
              "Name Surname",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF373737),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            Text(
              job,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Color(0xFF373737)),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: function,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3),
                alignment: Alignment.center,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF00A0DC), width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(31.0),
                  ),
                ),
                child: Text(
                  "View Profile",
                  style: TextStyle(color: Color(0xFF00A0DC)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
