import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/designed_dropdown_menu.dart';
import 'package:flutter_enter/Pages/Constants/constants.dart';
import 'package:flutter_enter/Pages/sub_profile_data.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'BlogsPage.dart';
import 'Components/cover_container.dart';
import 'Components/message_container.dart';
import 'Components/question_container.dart';
import 'Components/review_box.dart';
import 'Components/social_media_button.dart';
import 'NewsPage.dart';
import 'VideoPage.dart';

class CoverPage extends StatefulWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  _CoverPageState createState() => _CoverPageState();
}

class _CoverPageState extends State<CoverPage> {
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
    var isNoPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
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
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CoverContainer(isNoPortrait: isNoPortrait, width: width),
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
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 30),
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
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                          ),
                          Builder(
                            builder: (_) {
                              if (_itemSelectedValue == 'Video') {
                                return VideoPage(
                                    check: false,
                                    isPortrait: isNoPortrait,
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
                                return SizedBox();
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
