import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/about_container.dart';
import 'package:flutter_enter/Pages/Components/form_containers.dart';
import 'package:flutter_enter/Pages/Components/tab_bar_components.dart';
import 'package:flutter_enter/Pages/profile_message_sending_container.dart';
import 'Components/blue_button.dart';
import 'Components/drop_down_button.dart';
import 'Components/question_container.dart';

class QAPage extends StatefulWidget {
  const QAPage({Key? key}) : super(key: key);

  @override
  _QAPageState createState() => _QAPageState();
}

class _QAPageState extends State<QAPage> with TickerProviderStateMixin {
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  decoration:
                      BoxDecoration(color: Color(0xffE5E5E5), boxShadow: []),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Free Q&A with Immigration Professionals',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 27),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nibh gravida adipiscing lectus lacus sed sit. Donec in at neque eget congue arcu, eget praesent mattis. Eu tristique vitae a, lectus fames eget. Non morbi fermentum pretium lectus tristique tellus. Sapien ultricies vel in ipsum in augue enim in risus.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 40),
                      FormContainers(title: 'Ask your question'),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 10),
                          Text(
                            'Select category',
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
                      SizedBox(height: 60),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 15),
                            child: Text(
                              'Explain your situation',
                              style: TextStyle(
                                  color: Color(0xff0077B5),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          AboutYourSelfContainer(
                            width: width,
                            title: 'Enter  description',
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      FormContainers(title: 'Caty and state'),
                      SizedBox(height: 10),
                      Text(
                        'Do you plan to hire an attorney?',
                        style: TextStyle(
                            color: Color(0xff0077B5),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30),
                      TabBarComponents(
                          onTap: (index) {},
                          tab1Title: 'Yes',
                          tab2Title: 'Not Sure',
                          tab3Title: 'No'),
                      SizedBox(height: 50),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ProfileMessageSendingScreen();
                          }));
                        },
                        child: BlueButton(title: 'Send', width: width),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Recent Questions & Answers',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                  textAlign: TextAlign.center,
                ),
                QuestionContainer(
                  color: Colors.white,
                  questionColor: Color(0xffF3F3F3),
                ),
                QuestionContainer(
                  color: Color(0xffF5FCFF),
                  questionColor: Color(0xffD8F3FF),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
