import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/divider.dart';
import 'package:flutter_enter/Pages/Components/review_butoon.dart';
import 'package:flutter_enter/Pages/Components/save_button.dart';
import 'package:flutter_enter/Pages/Components/stars_row.dart';
import 'package:flutter_enter/Pages/Components/verified_data.dart';
import 'package:flutter_enter/Pages/Constants/constants.dart';
import 'package:flutter_enter/Pages/cover_page.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../profile_page.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Container(
        padding: EdgeInsets.only(top: 30, bottom: 20),
        decoration: containerDecoration,
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/wadood.png'),
              radius: isPortrait ? height * 0.115 : width * 0.14,
            ),
            SizedBox(height: 15),
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CoverPage();
                }));
              },
              child: Text(
                'Abdul Wadood',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 20),
            VerifiedRow(
              title: 'Open for Business',
              check: false,
            ),
            VerifiedRow(
              title: 'Virtual Consultation',
              check: false,
            ),
            SizedBox(height: 15),
            SaveButton(width: width),
            SizedBox(height: 10),
            DividerWidget(),
            StarsRow(
              title: '12 reviews',
            ),
            SizedBox(height: 5),
            ReviewButton(
                text: 'Reviews from Facebook',
                color: Color(0xff1877F2),
                icon: Icon(
                  FontAwesome.facebook_square,
                  color: Color(0xff1877F2),
                ),
                width: width),
            ReviewButton(
              text: 'Reviews from Yelp',
              icon: Icon(
                FontAwesome.yelp,
                color: Color(0xffF44336),
              ),
              width: width,
              color: Color(0xffF44336),
            ),
            SizedBox(height: 5),
            RichText(
              text: new TextSpan(
                  style: new TextStyle(
                    fontSize: 17.5,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Koolib rating: ',
                      style: new TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: '9.5',
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0077B5)),
                    ),
                  ]),
            ),
          ],
        ));
  }
}
