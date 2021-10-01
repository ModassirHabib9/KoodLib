import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_enter/Pages/pod_casts_lists_screen.dart';
import 'package:flutter_enter/Pages/qa_page.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'Components/about_container.dart';
import 'Components/blue_button.dart';
import 'Components/dotted_line_container.dart';
import 'Components/form_containers.dart';
import 'Components/if_applicable_row.dart';
import 'Components/not_robot_container.dart';

class DirectorySignUpForm extends StatefulWidget {
  const DirectorySignUpForm({Key? key}) : super(key: key);

  @override
  _DirectorySignUpFormState createState() => _DirectorySignUpFormState();
}

class _DirectorySignUpFormState extends State<DirectorySignUpForm> {
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
    var sizedBox = SizedBox(height: 40);
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
            child: Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return QAPage();
                    }));
                  },
                  child: Text(
                    'Directory Sign Up Form',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                  ),
                ),
                sizedBox,
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nibh gravida adipiscing lectus lacus sed sit. Donec in at neque eget congue arcu, eget praesent mattis. Eu tristique vitae a, lectus fames eget. Non morbi fermentum pretium lectus tristique tellus. Sapien ultricies vel in ipsum in augue enim in risus.',
                  textAlign: TextAlign.center,
                ),
                sizedBox,
                Text(
                  'Profile Information',
                  style: TextStyle(
                      color: Color(0xff0077B5),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                FormContainers(
                  title: 'Title:',
                ),
                FormContainers(
                  title: 'First Name',
                ),
                FormContainers(
                  title: 'Last Name',
                ),
                SizedBox(height: 10),
                IfApplicableRow(
                  title: 'Headshot Photo',
                  subTitle: '(if applicable)',
                ),
                SizedBox(height: 25),
                DottedLineContainer(),
                SizedBox(height: 30),
                FormContainers(
                  title: 'Your Facebook:',
                  icon: Icon(
                    FontAwesome.facebook_square,
                    color: Color(0xff1877F2),
                  ),
                ),
                FormContainers(
                  title: 'Your LinkedIn:',
                  icon: Icon(
                    FontAwesome.linkedin_square,
                    color: Color(0xff0A66C2),
                  ),
                ),
                FormContainers(
                  title: 'Your Google:',
                  icon: Icon(
                    FontAwesome.google,
                    color: Color(0xffEA4335),
                  ),
                ),
                FormContainers(
                  title: 'Your Twitter:',
                  icon: Icon(
                    FontAwesome.twitter,
                    color: Color(0xff1DA1F2),
                  ),
                ),
                FormContainers(
                  title: 'Your YouTube:',
                  icon: Icon(
                    FontAwesome.youtube_play,
                    color: Color(0xffFF0302),
                  ),
                ),
                FormContainers(
                  title: 'Your Instagram:',
                  icon: Icon(
                    FontAwesome.instagram,
                    color: Color(0xff1877F2),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      'What are you?',
                      style: TextStyle(
                          color: Color(0xff0077B5),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Color(0xffCFCCCC), width: 2)),
                  height: 55,
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          // labelStyle: textStyle,
                          errorStyle: TextStyle(
                              color: Colors.redAccent, fontSize: 16.0),
                          border: InputBorder.none,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: _itemSelectedValue,
                            isDense: true,
                            onChanged: (String? newValue) {
                              setState(() {
                                _itemSelectedValue = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _items.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Business Information',
                    style: TextStyle(
                        color: Color(0xff0077B5),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                FormContainers(title: 'Firm / Business name:'),
                FormContainers(title: 'Corporate Email Address:'),
                FormContainers(title: 'Phone Number: '),
                FormContainers(title: 'Website: '),
                SizedBox(height: 10),
                IfApplicableRow(
                  title: 'Firm / Business Logo',
                  subTitle: '(if applicable)',
                ),
                SizedBox(height: 20),
                DottedLineContainer(),
                SizedBox(height: 20),
                FormContainers(title: 'Law Firm Size:'),
                FormContainers(title: 'Street:'),
                FormContainers(title: 'City: '),
                FormContainers(title: 'Province:'),
                FormContainers(title: 'Zip / Postal Code:'),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Write about yourself and your firm. (Limit your answer 100-150 words.)',
                    style: TextStyle(
                        color: Color(0xff0077B5), fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                AboutYourSelfContainer(
                    width: width, title: 'Enter  description'),
                SizedBox(height: 30),
                NotRobotContainer(width: width),
                SizedBox(height: 30),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '"I agree to the Terms and Conditions" (Terms and Conditions linked to the Policy.)',
                            style: TextStyle(
                                color: Color(0xff0077B5),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                BlueButton(width: width, title: 'Sign Up'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
