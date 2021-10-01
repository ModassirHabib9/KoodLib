import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/bottom_menu.dart';
import 'package:flutter_enter/Pages/Components/carts_row.dart';
import 'package:flutter_enter/Pages/Components/join_us_container.dart';
import 'package:flutter_enter/Pages/Homepage2_e_CommerceService.dart';
import 'package:flutter_enter/Pages/product_page.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'FinibusBonorumetMalorum.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();
final TextEditingController email = TextEditingController();
final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
final TextEditingController password = TextEditingController();

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  color: Colors.red,
                  child: Text(
                    "",
                  ),
                ),
              ),
              Text(
                "Achieve your goals",
                style: TextStyle(
                  color: Color(0xFF18191F),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "with",
                    style: TextStyle(
                      color: Color(0xFF18191F),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ProductPage();
                      }));
                    },
                    child: Text(
                      " Koolib",
                      style: TextStyle(
                        color: Color(0xFF00A0DC),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Image.asset(
                  'assets/images/mainpage.jpg',
                  height: 270,
                  width: 500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 60,
                  width: 340,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    // color: Theme.of(context).primaryColor,
                    color: Color(0xFFF55D25),
                    child: Text(
                      "To join Koolib",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Home Page for Commerce');
                    },
                  ),
                ),
              ),
              CartsRow(
                title: "Sell & Buy ​",
                subTitle:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla",
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Color(0xFF0077B5),
                  size: 25,
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Container(
                color: Color(0xBFDEE8E8),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Text(
                        "Join the biggest \nimmigration market store",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30),
                      Container(
                        child: Image.asset(
                          'assets/images/Rectangle.jpg',
                          height: 195,
                          width: 340,
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        height: 254,
                        width: 340,
                        child: SizedBox(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 310,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFF5FCFF),
                              border: Border.all(
                                  color: Color(0xFF00A0DC), width: 3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(31.0))),
                          child: new Center(
                            child: new Text(
                              "Start Sell and Buy",
                              style: TextStyle(
                                  color: Color(0xFF00A0DC), fontSize: 22),
                              textAlign: TextAlign.center,
                            ),
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
                        height: 20,
                      ),
                      SizedBox(
                        height: 449,
                        width: 340,
                        child: Card(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset(
                                  'assets/images/Rectangltwo.jpg',
                                  height: 196,
                                  width: 320,
                                ),
                              ),
                              SizedBox(
                                width: 198,
                                height: 26,
                                child: Text(
                                  "Name Title",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF373737),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                height: 88,
                                width: 258,
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xFF373737)),
                                ),
                              ),
                              SizedBox(
                                height: 48,
                                width: 193,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Color(0xFF00A0DC), width: 3),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(31.0))),
                                  child: new Center(
                                    child: new Text(
                                      "Add To Cart",
                                      style: TextStyle(
                                          color: Color(0xFF00A0DC),
                                          fontSize: 22),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Divider(
                              color: Color(0xFFCFCCCC),
                              height: 10,
                            )),
                            Expanded(
                              child: Divider(
                                color: Color(0xFFCFCCCC),
                                height: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  child: SafeArea(
                      child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            color: Colors.red,
                            child: Text(
                              "",
                            ),
                          ),
                        ),
                        Text(
                          "Directory",
                          style: TextStyle(
                            color: Color(0xFF18191F),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 14.0, horizontal: 20.0),
                          child: SizedBox(
                            height: 250,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF18191F),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            'assets/images/directory.jpg',
                            height: 218,
                            width: 186,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xFFE0E7EA),
                          radius: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Color(0xFF0077B5),
                              size: 30,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Color(0xFF0077B5),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Browse Imigration Lawyers",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF0077B5),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40.0),
                          child: Container(
                            height: 120,
                            child: SizedBox(
                              height: 88,
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 48,
                          width: 183,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFF5FCFF),
                                border: Border.all(
                                    color: Color(0xFF00A0DC), width: 3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(31.0))),
                            child: new Center(
                              child: new Text(
                                "Browse",
                                style: TextStyle(
                                    color: Color(0xFF00A0DC), fontSize: 22),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  )),
                ),
              ),
              Container(
                width: double.infinity,
                color: Color(0xBFDEE8E8),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Text(
                        "Notary",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        child: Container(
                          height: 254,
                          child: SizedBox(
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          'assets/images/undraw.jpg',
                          height: 195,
                          width: 340,
                        ),
                      ),
                      SizedBox(height: 40),
                      SizedBox(
                        height: 48,
                        width: 183,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Color(0xFF00A0DC), width: 3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(31.0))),
                          child: new Center(
                            child: new Text(
                              "Open Notary",
                              style: TextStyle(
                                  color: Color(0xFF00A0DC), fontSize: 22),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: JoinUsContainer(
                    title: 'Become a Partner!',
                    bg: 'assets/images/bg3.png',
                    lorem:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent',
                    image: 'assets/images/handshake.png'),
              ),
              SizedBox(height: 70),
              Container(
                width: double.infinity,
                color: Color(0xBFDEE8E8),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/book.jpg',
                        height: 269,
                        width: 214,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Glossary",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF18191F),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 50.0),
                      child: Container(
                        height: 88,
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
                      height: 48,
                      width: 193,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF5FCFF),
                            border:
                                Border.all(color: Color(0xFF00A0DC), width: 3),
                            borderRadius:
                                BorderRadius.all(Radius.circular(31.0))),
                        child: new Center(
                          child: new Text(
                            "Open Glossary",
                            style: TextStyle(
                                color: Color(0xFF00A0DC), fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                'assets/images/Podcast.png',
                                height: 227,
                                width: 269,
                              ),
                            ),
                            SizedBox(height: 30),
                            Text(
                              "Podcast",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFF18191F),
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 50.0),
                              child: Container(
                                height: 88,
                                child: SizedBox(
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 48,
                              width: 193,
                              color: Colors.transparent,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFF5FCFF),
                                    border: Border.all(
                                        color: Color(0xFF00A0DC), width: 3),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(31.0))),
                                child: new Center(
                                  child: new Text(
                                    "Open Podcast",
                                    style: TextStyle(
                                        color: Color(0xFF00A0DC), fontSize: 14),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 90),
                    Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/images/interview.png',
                              height: 189,
                              width: 269,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            "Post Jobs",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xFF18191F),
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 50),
                            child: Container(
                              height: 88,
                              child: SizedBox(
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 48,
                            width: 193,
                            color: Colors.transparent,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFF5FCFF),
                                  border: Border.all(
                                      color: Color(0xFF00A0DC), width: 3),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(31.0))),
                              child: new Center(
                                child: new Text(
                                  "Open Post Jobs",
                                  style: TextStyle(
                                      color: Color(0xFF00A0DC), fontSize: 14),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "Grow Your Business",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF18191F),
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60.0, vertical: 20.0),
                      child: Container(
                        height: 88,
                        child: SizedBox(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 283,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF5FCFF),
                            border:
                                Border.all(color: Color(0xFF00A0DC), width: 3),
                            borderRadius:
                                BorderRadius.all(Radius.circular(31.0))),
                        child: new Center(
                          child: new Text(
                            "Start growing my business now",
                            style: TextStyle(
                                color: Color(0xFF00A0DC), fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
////////////////////////////////  Start Google Slider //////////////////////////////////
              SizedBox(
                width: double.infinity,
                child: new Container(
                  height: 128,
                  margin: const EdgeInsets.all(10.0),
                  child: new ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      new Container(
                        width: 226,
                        height: 128,
                        margin: EdgeInsets.all(10.0),
                        child: new Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFE8E6E6), width: 3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: new Image(
                            image: AssetImage("assets/images/GoogleLogo.jpg"),
                            width: 200,
                            height: 100,
                          ),
                        ),
                      ),
                      new Container(
                        width: 226,
                        height: 128,
                        margin: EdgeInsets.all(10.0),
                        child: new Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFE8E6E6), width: 3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: new Image(
                            image: AssetImage("assets/images/GoogleLogo.jpg"),
                            width: 200,
                            height: 100,
                          ),
                        ),
                      ),
                      new Container(
                        width: 226,
                        height: 128,
                        margin: EdgeInsets.all(10.0),
                        child: new Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFE8E6E6), width: 3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: new Image(
                            image: AssetImage("assets/images/GoogleLogo.jpg"),
                            width: 226,
                            height: 128,
                          ),
                        ),
                      ),
////////////////////////////////  End Google Slider //////////////////////////////////
                    ],
                  ),
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
