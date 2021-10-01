import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/save_button.dart';
import 'package:flutter_enter/Pages/Components/verified_data.dart';

class CoverContainer extends StatelessWidget {
  const CoverContainer({
    Key? key,
    required this.isNoPortrait,
    required this.width,
  }) : super(key: key);

  final bool isNoPortrait;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/cover.png',
                    ),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: CircleAvatar(
                    radius: isNoPortrait ? width * 0.2 : width * 0.1,
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/iconPng/hassetLog.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'HASSETT LAW FIRM',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 10),
                      Image.asset('assets/iconPng/myverified.png')
                    ],
                  ),
                  SizedBox(height: 15),
                  VerifiedRow(
                    title: 'Open for Business',
                    check: true,
                  ),
                  SizedBox(height: 5),
                  VerifiedRow(
                    title: 'Virtual Consultation',
                    check: true,
                  ),
                ],
              ),
            ),
            SaveButton(width: width),
          ],
        ),
      ),
    );
  }
}
