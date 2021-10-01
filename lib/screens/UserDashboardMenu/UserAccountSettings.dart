import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/components/text_field_widget.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/widgets/ContainerText.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/widgets/DottedLine.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/widgets/UserPhotoLink.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'UserAccountSettings2Page.dart';

class UserAccountSettings extends StatefulWidget {
  @override
  _UserAccountSettingsState createState() => _UserAccountSettingsState();
}

class _UserAccountSettingsState extends State<UserAccountSettings> {
  TextEditingController textController = TextEditingController();
  get ontap => null;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DottedLine(),
                UserSocialMediaLink(
                  UserName: "Facebook",
                  UserLink: "facebook.com/urlyo",
                  icon: Icon(
                    Icons.facebook,
                    color: Colors.blue,
                  ),
                ),
                UserSocialMediaLink(
                  UserName: "Twitter",
                  UserLink: "twitter.com/urlyo",
                  icon: Icon(
                    FontAwesome.twitter_square,
                    color: Colors.blue,
                  ),
                ),
                UserSocialMediaLink(
                  UserName: "Linedlin",
                  UserLink: "lindlin.com/urlyo",
                  icon: Icon(
                    FontAwesome.linkedin_square,
                    color: Colors.blue,
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(12.0),
                //   child: Text(
                //     "UserName",
                //     textAlign: TextAlign.start,
                //     style: TextStyle(color: Colors.blue, fontSize: 16),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       border: Border.all(color: Colors.black12),
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     height: 50,
                //     child: TextField(),
                //   ),
                // ),
                TextFieldWidget(
                    textController: textController,
                    title: 'Username',
                    hint: 'fahad@gmail.com'),
                ContainerText(
                    samllText: "Data query",
                    largeText:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit porttitor sed dictum accumsan. Vitae facilisis velit enim elit in urna. Lorem rhoncus amet, nulla aliquet mi. Metus nibh bibendum nibh neque congue."),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: width * 0.5,
                    height: 48,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xFF00A0DC), width: 3),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: new Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        UserAccountSettings2Page()));
                          },
                          child: new Text(
                            "Request My Data",
                            style: TextStyle(
                                color: Color(0xFF00A0DC), fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ContainerText(
                    samllText: "Data Query",
                    largeText:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit porttitor sed dictum accumsan. Vitae facilisis velit enim elit in urna. Lorem rhoncus amet, nulla aliquet mi. Metus nibh bibendum nibh neque congue."),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: width * 0.5,
                    height: 48,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xFF00A0DC), width: 3),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: new Center(
                        child: new Text(
                          "Delete My Account",
                          style:
                              TextStyle(color: Color(0xFF00A0DC), fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
