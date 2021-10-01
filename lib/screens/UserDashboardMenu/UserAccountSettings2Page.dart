import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/UserSecuritySettingPage.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/widgets/DottedLine.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/widgets/UploadDocs.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/widgets/UserPhotoLink.dart';
import 'package:flutter_icons/flutter_icons.dart';

class UserAccountSettings2Page extends StatefulWidget {
  @override
  _UserAccountSettings2PageState createState() =>
      _UserAccountSettings2PageState();
}

class _UserAccountSettings2PageState extends State<UserAccountSettings2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DottedLine(),
                UserSocialMediaLink(
                  UserName: "Facebook",
                  UserLink: "facebook.com",
                  icon: Icon(
                    Icons.facebook,
                    color: Colors.blue,
                  ),
                ),
                UserSocialMediaLink(
                    UserName: "Twitter",
                    UserLink: "twitter.com",
                    icon: Icon(
                      FontAwesome.twitter,
                      color: Colors.blue,
                    )),
                UserSocialMediaLink(
                    UserName: "Lindlin",
                    UserLink: "lindlin.com",
                    icon: Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    )),
                ////////////////////////////
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "UserName",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Lorem Loren Sipum',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xFFAAABB0),
                          ),
                        ),
                        // prefixIcon: Icon(Icons.account_box_sharp),
                      ),
                    ),
                  ),
                ),
                ///////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Company Name",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Lorem Loren Sipum',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xFFAAABB0),
                          ),
                        ),
                        // prefixIcon: Icon(Icons.account_box_sharp),
                      ),
                    ),
                  ),
                ),
                ////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Lorem Ipsum",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 180,
                    child: TextField(
                      maxLines: 50,
                      minLines: 20,
                      decoration: InputDecoration(
                        hintText: 'Enter  description',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xFFAAABB0),
                          ),
                        ),
                        // prefixIcon: Icon(Icons.account_box_sharp),
                      ),
                    ),
                  ),
                ),
                ////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Lorem Ipsum",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 180,
                    child: TextField(
                      maxLines: 50,
                      minLines: 20,
                      decoration: InputDecoration(
                        hintText: 'Enter  description',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xFFAAABB0),
                          ),
                        ),
                        // prefixIcon: Icon(Icons.account_box_sharp),
                      ),
                    ),
                  ),
                ),
                ///////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Upload documents",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ),
                /////////////////////////////
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UploadDocuments(),
                    UploadDocuments(),
                    UploadDocuments(),
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
