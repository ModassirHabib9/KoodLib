import 'package:ai_progress/ai_progress.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/blue_button.dart';
import 'package:flutter_enter/Pages/feedback_screen.dart';
import 'package:flutter_enter/Pages/profile_message_sending_container.dart';
import 'dart:math' as math;

import 'Components/profile_photo.dart';
import 'Components/rich_text_component.dart';

class SubProfileData extends StatefulWidget {
  const SubProfileData({Key? key}) : super(key: key);

  @override
  _SubProfileDataState createState() => _SubProfileDataState();
}

class _SubProfileDataState extends State<SubProfileData> {
  var _segmentValue = 1;
  int no = 1;
  List arrSongList = [
    'assets/images/p1.png',
    'assets/images/p2.png',
    'assets/images/p1.png',
    'assets/images/p2.png',
    'assets/images/p2.png',
  ];

  @override
  Widget build(BuildContext context) {
    bool isNotPortrait1 =
        MediaQuery.of(context).orientation == Orientation.portrait;
    var width = MediaQuery.of(context).size.width;
    PageController controller =
        PageController(viewportFraction: isNotPortrait1 ? 0.47 : 0.25);
    return Padding(
      padding:
          EdgeInsets.only(left: width * 0.08, right: width * 0.08, bottom: 30),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            height: 260,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lawyers In The Firm',
                  style: TextStyle(
                      color: Color(0xff0077B5), fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xff0077B5),
                          size: 30,
                        ),
                      ),
                      Expanded(
                        child: PageView.builder(
                            controller: controller,
                            itemCount: arrSongList.length,
                            onPageChanged: (val) {
                              _segmentValue = val + 1;
                              print(_segmentValue);
                              setState(() {
                                print('Managed');
                                no = no + 1;
                              });
                            },
                            itemBuilder: (_, i) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: ProfilePhoto(image: arrSongList[i]),
                              );
                            }),
                      ),
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(math.pi),
                        child: GestureDetector(
                          onTap: () {
                            controller.previousPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xff0077B5),
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text(
                    '$no',
                    style: TextStyle(fontSize: 0.0000001, color: Colors.white),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: isNotPortrait1 ? 250 : width * 1,
                      height: 50,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: AirLinearStateProgressIndicator(
                        size: Size(150, isNotPortrait1 ? 250 : width * 1),
                        value: _segmentValue / arrSongList.length * 100, //1~100
                        valueColor:
                            ColorTween(begin: Colors.blue, end: Colors.blue)
                                .transform(_segmentValue / 10)!,
                        pathStrokeWidth: 5.0,
                        valueStrokeWidth: 5.0,
                        roundCap: true,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey.withOpacity(0.3),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichTextComponent(
                  heading: 'Address:',
                  text:
                      ' Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                ),
                RichTextComponent(
                  heading: 'Website:',
                  text: 'loremipsumdolor.com',
                ),
                RichTextComponent(
                  heading: 'Languages:',
                  text: 'English, Spanish, Ukrainian',
                ),
                RichTextComponent(
                  heading: 'Professional Associations:',
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                ),
                Text(
                  'Location on map:  ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0077B5),
                      fontSize: 17),
                ),
                SizedBox(height: 15),
                Image.asset('assets/images/map.png'),
                SizedBox(height: 15),
                Text(
                  'About Name Surname  ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0077B5),
                      fontSize: 17),
                ),
                SizedBox(height: 20),
                Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nibh tortor netus mi id vulputate. Facilisis amet nisl sed quis. Pellentesque id enim, faucibus porttitor. Lacinia sit fringilla volutpat risus elit faucibus magna proin. Tincidunt sed consectetur id tempus et est et. At auctor velit nunc, sit. Ac pellentesque sit nunc, mattis. In sit lorem tempor ultricies nunc, iaculis odio risus. Nulla convallis elementum turpis tortor amet mauris ut venenatis. Laoreet parturient id volutpat laoreet sed vitae. Justo, dignissim eu, nulla vulputate sagittis, nisl, facilisis. Suscipit vel a sollicitudin vulputate felis eu enim facilisis laoreet. Volutpat in facilisi eu morbi nisl libero, faucibus.'),
              ],
            ),
          ),
          SizedBox(height: 25),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FeedBackScreen();
              }));
            },
            child: BlueButton(title: 'Write a review', width: width),
          ),
        ],
      ),
    );
  }
}
