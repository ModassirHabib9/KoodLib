import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/components/password_field.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/UserNotificationSettings.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/widgets/Checkboxs.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/widgets/UserPhotoMedia.dart';
import 'package:flutter_icons/flutter_icons.dart';

class UserSecurityPage extends StatefulWidget {
  @override
  _UserSecurityPageState createState() => _UserSecurityPageState();
}

class _UserSecurityPageState extends State<UserSecurityPage> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    "Change password",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Container(
                    height: 120,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit porttitor sed dictum accumsan. Vitae facilisis velit enim elit in urna. Lorem rhoncus amet, nulla aliquet mi.",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Current Password",
                          style: TextStyle(
                            color: Color(0xff00A0DC),
                          ),
                        ),
                      ),
                      PasswordField(obscureText: obscureText),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "New Password",
                          style: TextStyle(
                            color: Color(0xff00A0DC),
                          ),
                        ),
                      ),
                      PasswordField(obscureText: obscureText),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text(
                        "Repeat New Password",
                        style: TextStyle(
                          color: Color(0xff00A0DC),
                        ),
                      )),
                      PasswordField(obscureText: obscureText),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => UserNotificationSettings()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: SizedBox(
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
                            "Change password",
                            style: TextStyle(
                                color: Color(0xFF00A0DC), fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    "Connect accounts",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 20.0),
                  child: Container(
                    height: 50,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit porttitor sed dictum accumsan",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                UserPhotoLinkMedia(
                  SocialName: "Facebook",
                  LinkName: "facebook.com",
                  icon: Icon(
                    FontAwesome.facebook,
                    color: Colors.blue,
                  ),
                  buttonColor: Colors.white,
                ),
                UserPhotoLinkMedia(
                  SocialName: "Youtube",
                  LinkName: "youtube.com",
                  icon: Icon(
                    FontAwesome.youtube_square,
                    color: Colors.red,
                  ),
                  buttonColor: Colors.blue,
                ),
                UserPhotoLinkMedia(
                  SocialName: "Twiter",
                  LinkName: "twitter.com",
                  buttonColor: Colors.white,
                  icon: Icon(
                    FontAwesome.twitter_square,
                    color: Colors.blue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 341,
                    width: double.infinity,
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5.0, left: 12.0, right: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text(
                                "Security notification settings",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Checkboxs(),
                            Checkboxs(),
                            Checkboxs(),
                            Checkboxs(),
                            Checkboxs(),
                            Checkboxs(),
                            Checkboxs(),
                          ],
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
