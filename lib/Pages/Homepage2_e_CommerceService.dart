import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/bottom_menu.dart';
import 'package:flutter_enter/Pages/Components/join_us_container.dart';
import 'package:flutter_enter/Pages/Components/read_more_catogaries_container.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Components/carts_row.dart';

class Homepage2_e_CommerceService extends StatefulWidget {
  const Homepage2_e_CommerceService({Key? key}) : super(key: key);

  @override
  _Homepage2_e_CommerceServiceState createState() =>
      _Homepage2_e_CommerceServiceState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();
final TextEditingController email = TextEditingController();
final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
final TextEditingController password = TextEditingController();

class _Homepage2_e_CommerceServiceState
    extends State<Homepage2_e_CommerceService> {
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 60),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        right: 30,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Canadian Immigration\n For Less",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF18191F),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              'assets/images/commerce.png',
                              height: 270,
                              width: 500,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 60,
                            width: double.infinity,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              // color: Theme.of(context).primaryColor,
                              color: Color(0xFFF55D25),
                              child: Text(
                                "Browse Categories",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/Toggle Page');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    CartsRow(
                      title: "Do-It-Yourself Canadian Immigration",
                      subTitle: "Pre-filled documents/kits",
                      icon: Icon(
                        AntDesign.earth,
                        color: Color(0xFF0077B5),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xBFDEE8E8),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/Rectangle.jpg',
                          height: 195,
                          width: 340,
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        "Buy. Try. Immigrate.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xFF00A0DC), width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(31.0))),
                        child: Text(
                          "Start the journey",
                          style: TextStyle(
                            color: Color(0xFF00A0DC),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Bestsellers",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.4))),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/Rectangltwo.jpg',
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Name Title",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF373737),
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: 208,
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xFF373737)),
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 14),
                              width: 200,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Color(0xFF00A0DC), width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(31.0))),
                              child: Text(
                                "Add To Cart",
                                style: TextStyle(
                                    color: Color(0xFF00A0DC),
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 25),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
                child: Column(
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(height: 40),
                    ReadMoreCatogariesContainer(
                      title: 'Study',
                      text:
                          "Study permit renewal, extension,\nStudent Direct Stream (SDS), PGWP",
                      image: 'assets/images/stdman.png',
                    ),
                    ReadMoreCatogariesContainer(
                      title: 'Refugee',
                      text: "Canada refugee status, eligibility, appeal",
                      image: 'assets/images/1r.png',
                    ),
                    ReadMoreCatogariesContainer(
                      title: 'Refusals & Appeals',
                      text:
                          'Refused applications, visa rejections, refusal letter, appeal, reconsideration',
                      image: 'assets/images/stdman.png',
                    ),
                    ReadMoreCatogariesContainer(
                      title: 'Business Immigration',
                      text:
                          "Start-up Visa (Investor) Program, Entrepreneur Programs, Self-Employed Programs, Business PNP Programs",
                      image: 'assets/images/3r.png',
                    ),
                    ReadMoreCatogariesContainer(
                      title: 'Refusals & Appeals',
                      text:
                          "Refused applications, visa rejections, refusal letter, appeal, reconsideration",
                      image: 'assets/images/4r.png',
                    ),
                    ReadMoreCatogariesContainer(
                      title: 'Visitor',
                      text: "Visit / Tourism, Temporary Resident",
                      image: 'assets/images/5r.png',
                    ),
                    ReadMoreCatogariesContainer(
                      title: 'Work',
                      text:
                          "Temporary foreign worker, business visitor, LMIA work permits, LMIA exemptions, ICT, closed & open work permits",
                      image: 'assets/images/stdman.png',
                    ),
                    ReadMoreCatogariesContainer(
                      title: 'Study',
                      text:
                          "Materials on express entry application, eligibility and CRS Score",
                      image: 'assets/images/7r.png',
                    ),
                    SizedBox(height: 30),
                    JoinUsContainer(
                      title: 'Become a Partner!',
                      bg: 'assets/images/bg3.png',
                      lorem:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent',
                      image: 'assets/images/handshake.png',
                    ),
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
