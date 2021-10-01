import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/page_number.dart';
import 'package:flutter_enter/Pages/Components/profile_container.dart';
import 'package:flutter_enter/Pages/Components/stars_row.dart';
import 'package:flutter_enter/Pages/Constants/constants.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'Components/review_box.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF3F3F3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.symmetric(vertical: 10, horizontal: width * 0.08),
            child: Column(
              children: [
                ProfileContainer(width: width),
                SizedBox(height: 10),
                ListView(
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
                    ReviewBox(),
                  ],
                ),
                SizedBox(height: 20),
                PageNumbers(),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
