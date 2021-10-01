import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/bottom_menu.dart';
import 'package:flutter_enter/Pages/Components/jobs_container.dart';
import 'package:flutter_enter/Pages/Components/join_us_container.dart';
import 'package:flutter_enter/Pages/Components/page_number.dart';
import 'package:flutter_enter/Pages/Components/white_box.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/YourProduct.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JobsForImmigrants extends StatefulWidget {
  const JobsForImmigrants({Key? key}) : super(key: key);

  @override
  _JobsForImmigrantsState createState() => _JobsForImmigrantsState();
}

class _JobsForImmigrantsState extends State<JobsForImmigrants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Column(
                  children: [
                    Text(
                      "Jobs for immigrants",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF18191F),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Image.asset(
                        'assets/images/jobImage.png',
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Canadian immigration legal fees can be intimidating. Our products prepared by lawyers and other immigration professionals provide an alternative path.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF18191F),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xFF00A0DC), width: 2),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_link,
                            color: Colors.blue,
                          ),
                          new Text(
                            " Edit order",
                            style: TextStyle(
                                color: Color(0xFF00A0DC), fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    WhiteBox(title: 'Search Job'),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 7),
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border:
                                Border.all(color: Color(0xFF00A0DC), width: 3),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Search",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "1234 job vacancies found",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    JobContainer(),
                    JobContainer(),
                    JobContainer(),
                    JobContainer(),
                    PageNumbers(),
                    SizedBox(height: 20),
                    JoinUsContainer(
                        title: 'Become a Partner!',
                        bg: 'assets/images/bg2.png',
                        lorem:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent',
                        image: 'assets/images/handshake.png')
                  ],
                ),
              ),
              BottomMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
