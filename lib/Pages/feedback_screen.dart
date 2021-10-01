import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/about_container.dart';
import 'package:flutter_enter/Pages/Components/blue_button.dart';
import 'package:flutter_enter/Pages/Components/form_containers.dart';
import 'package:flutter_enter/Pages/qa_page.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'Components/drop_down_button.dart';

class FeedBackScreen extends StatefulWidget {
  const FeedBackScreen({Key? key}) : super(key: key);

  @override
  _FeedBackScreenState createState() => _FeedBackScreenState();
}

class _FeedBackScreenState extends State<FeedBackScreen> {
  var _items = [
    "Developer",
    "Programmer",
    "Youtuber",
    "Graphic designer",
  ];
  var _itemSelectedValue;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: width * 0.08, vertical: 30),
            child: Column(
              children: [
                Text(
                  'Feedback about the lawyer',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nibh gravida adipiscing lectus lacus sed sit. Donec in at neque eget congue arcu, eget praesent mattis. Eu tristique vitae a, lectus fames eget. Non morbi fermentum pretium lectus tristique tellus. Sapien ultricies vel in ipsum in augue enim in risus.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Rate',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0077B5),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    RatingBar.builder(
                      itemSize: width * 0.14,
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
                SizedBox(height: 30),
                FormContainers(title: 'Name of lawer/consultant/paralegal'),
                FormContainers(title: 'Email of the lawyer'),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      'Firm',
                      style: TextStyle(
                          color: Color(0xff0077B5),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                DropDownButton(
                    itemSelectedValue: _itemSelectedValue,
                    items: _items,
                    onPressed: (String? newValue) {
                      setState(() {
                        _itemSelectedValue = newValue;
                      });
                    }),
                FormContainers(
                    title: 'Your Name (anonymous reviews not accepted)'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        'Your Description',
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
                BlueButton(title: 'Leave a review', width: width)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
