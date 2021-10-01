import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/blue_button.dart';
import 'package:flutter_enter/Pages/Components/designed_dropdown_menu.dart';
import 'package:flutter_enter/Pages/Components/divider.dart';
import 'package:flutter_enter/Pages/Components/profile_container.dart';
import 'package:flutter_enter/Pages/Components/review_butoon.dart';
import 'package:flutter_enter/Pages/sub_profile_data.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'BlogsPage.dart';
import 'Components/message_container.dart';
import 'Components/question_container.dart';
import 'Components/review_box.dart';
import 'Components/social_media_button.dart';
import 'Components/stars_row.dart';
import 'NewsPage.dart';
import 'VideoPage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var _items = [
    "Profile",
    "Video",
    "Blogs",
    "News",
    "Answers",
  ];
  var _itemSelectedValue = "Profile";
  bool check = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    var height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () async {
        if (check == true) {
          setState(() {
            check = false;
          });
          return false;
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: Color(0xffF3F3F3),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: width * 0.08),
                  child: ProfileContainer(width: width),
                ),
                check
                    ? Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10, horizontal: width * 0.08),
                        child: ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            ReviewBox(),
                            ReviewBox(),
                            ReviewBox(),
                            ReviewBox(),
                            ReviewBox(),
                            ReviewBox(),
                            ReviewBox(),
                          ],
                        ),
                      )
                    : Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: width * 0.08),
                            child: Column(
                              children: [
                                SizedBox(height: 20),
                                DesignedDropDownMenu(
                                    itemSelectedValue: _itemSelectedValue,
                                    item: _items,
                                    onPressed: (value) {
                                      setState(() {
                                        _itemSelectedValue = value;
                                      });
                                    }),
                                SizedBox(height: 30),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SocialMediaButton(
                                          icon: Icon(
                                            FontAwesome.youtube_play,
                                            color: Colors.red,
                                          ),
                                        ),
                                        SocialMediaButton(
                                          icon: Icon(
                                            FontAwesome.linkedin_square,
                                            color: Colors.blue[700],
                                          ),
                                        ),
                                        SocialMediaButton(
                                          icon: Icon(
                                            FontAwesome.facebook_square,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    MessageContainer(
                                      width: width,
                                      onTap: () {
                                        setState(() {
                                          check = true;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Builder(
                            builder: (_) {
                              if (_itemSelectedValue == 'Video') {
                                return VideoPage(
                                    check: false,
                                    isPortrait: isPortrait,
                                    height: height,
                                    width: width); //1st custom tabBarView
                              } else if (_itemSelectedValue == 'Blogs') {
                                return BlogsPage(
                                  check: false,
                                ); //2nd tabView
                              } else if (_itemSelectedValue == 'News') {
                                return NewsPage(check: false); //3rd tabView
                              } else if (_itemSelectedValue == 'Answers') {
                                return QuestionContainer(
                                  color: Colors.white,
                                  questionColor: Color(0xffF3F3F3),
                                );
                              } else if (_itemSelectedValue == 'Profile') {
                                return SubProfileData();
                              } else {
                                return Text('h');
                              }
                            },
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
