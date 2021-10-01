import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/about_container.dart';
import 'package:flutter_enter/Pages/Components/blue_button.dart';
import 'package:flutter_enter/Pages/Components/not_robot_container.dart';
import 'Components/profile_container.dart';

class ProfileMessageSendingScreen extends StatelessWidget {
  const ProfileMessageSendingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.symmetric(vertical: 25, horizontal: width * 0.09),
            child: Column(
              children: [
                ProfileContainer(width: width),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        'Your message',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0077B5)),
                      ),
                    ),
                    AboutYourSelfContainer(
                        width: width, title: 'Enter Message'),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amet,consectetur  adipiscing elit. Vestibulum et culore',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                NotRobotContainer(width: width),
                SizedBox(height: 30),
                MaterialButton(
                    onPressed: () {},
                    child: BlueButton(title: 'Submit', width: width)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
