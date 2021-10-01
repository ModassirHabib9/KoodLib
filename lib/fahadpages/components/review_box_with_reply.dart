import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Constants/constants.dart';
import 'package:flutter_enter/fahadpages/constants/constants1.dart';
import 'package:flutter_svg/svg.dart';

class ReviewBoxWithReply extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: kContainerDecoration,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/wadood.png'),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'User name',
                                style: TextStyle(
                                    color: Color(0xff0077B5),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                color: Color(0xffF99746),
                                size: width * 0.06,
                              ),
                              Icon(Icons.star,
                                  color: Color(0xffF99746), size: width * 0.06),
                              Icon(Icons.star,
                                  color: Color(0xffF99746), size: width * 0.06),
                              Icon(Icons.star,
                                  color: Color(0xffF99746), size: width * 0.06),
                              Icon(Icons.star_border_rounded,
                                  color: Color(0xffF99746), size: width * 0.06),
                            ],
                          ),
                          Image.asset('assets/iconPng/menudot.png'),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rhoncus, massa nec lacus, pulvinar ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
              ),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        // controller: messageTextController,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        onChanged: (value) {
                          // messageText = value;
                        },
                        decoration: kMessageTextFieldDecoration,
                      ),
                    ),
                    FlatButton(
                      minWidth: width * 0.04,
                      onPressed: () {
                        // messageTextController.clear();
                        // _firestor.collection('messages').add({
                        //   'text': messageText,
                        //   'sender': loggedInUser.email,
                        // });
                      },
                      child: SvgPicture.asset(
                        'assets/iconsvg/sendbutton.svg',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
