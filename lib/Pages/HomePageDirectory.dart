import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/bottom_menu.dart';
import 'package:flutter_enter/Pages/Components/drop_down_button.dart';
import 'package:flutter_enter/Pages/Components/join_us_container.dart';
import 'package:flutter_enter/Pages/Components/lawyer_profile_container.dart';
import 'package:flutter_enter/Pages/Components/white_box.dart';
import 'package:flutter_enter/Pages/Components/white_button.dart';
import 'package:flutter_enter/Pages/cover_page.dart';
import 'package:flutter_enter/Pages/directory_sign_up_form.dart';
import 'package:flutter_enter/Pages/profile_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Components/ask_lawyer_button.dart';
import 'JobsForImmigrants.dart';

class HomePageDirectory extends StatefulWidget {
  const HomePageDirectory({Key? key}) : super(key: key);

  @override
  _HomePageDirectoryState createState() => _HomePageDirectoryState();
}

GlobalKey<FormState> _formKey = GlobalKey<FormState>();
late String _myActivity;
late String _myActivityResult;
late String _khanActivity;
late String _khanResult;
final formKey = new GlobalKey<FormState>();
String _coachingLevel = 'Education Level';
var _items = [
  "Lawyer",
  "Blogger",
  "Youtuber",
  "Programmer",
  "Designer",
];
var _itemSelectedValue = "Lawyer";

class _HomePageDirectoryState extends State<HomePageDirectory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    children: [
                      Text(
                        "Lorem ipsum \ndolor sit ipsum",
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
                          'assets/images/directory.png',
                          height: 270,
                          width: 500,
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        width: 340,
                        height: 78,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF18191F),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        height: 50,
                        child: DropDownButton(
                          items: _items,
                          itemSelectedValue: _itemSelectedValue,
                          onPressed: (value) {
                            setState(() {
                              _itemSelectedValue = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      WhiteBox(
                        title: 'Lawyer Name',
                      ),
                      SizedBox(height: 20),
                      WhiteBox(title: 'Location'),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 48,
                            width: 193,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border: Border.all(
                                      color: Color(0xFF00A0DC), width: 3),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25.0))),
                              child: new Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Search",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                  color: Color(0xBFDEE8E8),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Free Q&A with Immigration Professionals",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 30.0),
                        child: Container(
                          height: 80,
                          width: 340,
                          child: SizedBox(
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: TextFormField(
                          minLines: 15,
                          maxLines: 50,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintText: 'Enter question',
                            hintStyle: TextStyle(color: Color(0xFFCFCCCC)),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      AskLawyerButton(),
                      SizedBox(height: 20),
                      JoinUsContainer(
                          title: "For Immigration Professionals",
                          bg: 'assets/images/bgmask.png',
                          lorem:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis',
                          image: 'assets/images/bgroup.png'),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Featured Immigration\n Professionals",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  height: 350,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      LawyerProfileContainer(
                          function: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ProfilePage();
                            }));
                          },
                          job: "Lawyer",
                          image: 'assets/images/lawyer1.png'),
                      LawyerProfileContainer(
                          function: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ProfilePage();
                            }));
                          },
                          job: "Lawyer",
                          image: 'assets/images/lawyer2.png'),
                      LawyerProfileContainer(
                          function: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ProfilePage();
                            }));
                          },
                          job: "Lawyer",
                          image: 'assets/images/lawyer3.jpg'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 60.0),
                  child: Divider(
                    height: 20,
                    color: Colors.grey.withOpacity(0.5),
                    thickness: 2,
                  ),
                ),
                Container(
                  height: 350,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      LawyerProfileContainer(
                          function: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return CoverPage();
                            }));
                          },
                          job: 'Paralegal',
                          image: 'assets/images/glawyer.png'),
                      LawyerProfileContainer(
                          job: 'Consultant',
                          function: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return CoverPage();
                            }));
                          },
                          image: 'assets/images/glawyer.png'),
                      LawyerProfileContainer(
                          job: 'Consultant',
                          function: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return CoverPage();
                            }));
                          },
                          image: 'assets/images/glawyer.png'),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                  width: double.infinity,
                  color: Color(0xBFDEE8E8),
                  child: Column(
                    children: [
                      Text(
                        "Review your immigration\n professional",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Image.asset(
                          'assets/images/reviewimage.png',
                          height: 191,
                          width: 286,
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFF00A0DC),
                            border:
                                Border.all(color: Color(0xFF00A0DC), width: 3),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: new Center(
                          child: new Text(
                            "Leave a review",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  width: double.infinity,
                  color: Color(0xFF9E9E9E),
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "Lorem ipsum dolor sit \namet dolor sit amet",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 400,
                        width: double.infinity,
                        child: SizedBox(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam egestas gravida ut a at elit egestas volutpat. Pharetra sed est imperdiet volutpat fermentum ultrices. Pharetra neque dolor enim nulla arcu. Magna sed pharetra tortor, aliquam quam venenatis. Leo libero nunc metus facilisis bibendum urna, tincidunt felis in.\n\n Ultricies ornare nisl vitae, interdum Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam egestas gravida ut a at elit egestas volutpat. Pharetra sed est imperdiet volutpat fermentum ultrices. Pharetra neque dolor enim nulla arcu. Magna sed pharetra tortor, aliquam quam venenatis. Leo libero nunc metus facilisis bibendum urna, tincidunt felis in. Ultricies ornare nisl vitae, interdum",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      WhiteButton(
                          title: "Immigration Professionals Get listed "),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DirectorySignUpForm();
                          }));
                        },
                        child: WhiteButton(title: 'Claim your profile'),
                      ),
                      Container(
                        child: Image.asset(
                          'assets/images/oldman.png',
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                BottomMenu(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
