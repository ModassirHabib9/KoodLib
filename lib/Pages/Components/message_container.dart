import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/review_butoon.dart';
import 'package:flutter_enter/Pages/Components/stars_row.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../profile_message_sending_container.dart';
import 'blue_button.dart';
import 'divider.dart';

class MessageContainer extends StatelessWidget {
  final dynamic onTap;
  const MessageContainer({
    Key? key,
    required this.onTap,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesome.google,
                      color: Colors.red[700],
                    ),
                    SizedBox(width: 10),
                    Text('5.0'),
                    SizedBox(width: 5),
                    StarsRow(
                      title: '(256)',
                    ),
                  ],
                ),
                SizedBox(height: 10),
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
                    color: Color(0xffF44336),
                    icon: Icon(
                      FontAwesome.yelp,
                      color: Color(0xffF44336),
                    ),
                    width: width),
              ],
            ),
          ),
          DividerWidget(),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Koolib rating: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '9.0',
                    style: TextStyle(
                        color: Color(0xff0077B5), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xff00A0DC),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff00A0DC),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff00A0DC),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff00A0DC),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff00A0DC),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff00A0DC),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff00A0DC),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff00A0DC),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff00A0DC),
                  ),
                  Icon(
                    Icons.star_half,
                    color: Color(0xff00A0DC),
                  ),
                ],
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: onTap,
                child: Container(
                  alignment: Alignment.center,
                  width: width * 0.6,
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color(0xff00A0DC), width: 2),
                  ),
                  child: Text(
                    'Read all reviews on Koolib',
                    style: TextStyle(color: Color(0xff00A0DC)),
                  ),
                ),
              )
            ],
          ),
          DividerWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProfileMessageSendingScreen();
                }));
              },
              child: BlueButton(title: 'Message', width: width),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                AntDesign.phone,
                color: Color(0xff0077B5),
                size: 20,
              ),
              SizedBox(width: 10),
              Text(
                '(123) 456-7890',
                style: TextStyle(fontWeight: FontWeight.w500),
              )
            ],
          ),
        ],
      ),
    );
  }
}
