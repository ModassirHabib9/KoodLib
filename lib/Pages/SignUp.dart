import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/blue_button.dart';
import 'package:flutter_enter/screens/ProductCatalog.dart';
import '../screens/welcome_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sign_Up extends StatefulWidget {
  final dynamic togglePage;
  const Sign_Up({Key? key, required this.togglePage}) : super(key: key);

  @override
  _Sign_UpState createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  bool check1 = false;
  bool check2 = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController email = TextEditingController();

  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();

  final TextEditingController password = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF0077B5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFFAAABB0),
                      ),
                    ),
                    // prefixIcon: Icon(Icons.account_box_sharp),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      child: Icon(
                        obscureText == true
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                      ),
                    ),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFFAAABB0))),
                    // prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Transform.scale(
                      scale: 1.7,
                      child: new Checkbox(
                        value: check1,
                        onChanged: (bool? value1) {
                          setState(() {
                            check1 = value1!;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                        "I want to get deals and personal \nrecommendations by receving",
                        style: TextStyle(
                          color: Color(0xFF373737),
                        ),
                        overflow: TextOverflow.visible),
                  ],
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 1.7,
                      child: new Checkbox(
                        value: check2,
                        onChanged: (bool? value1) {
                          setState(() {
                            check2 = value1!;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: new TextSpan(
                          style: new TextStyle(
                            fontSize: 16.5,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            new TextSpan(
                                text: 'I agree to the',
                                style: TextStyle(fontSize: 14)),
                            new TextSpan(
                              text: ' Terms of Service\n',
                              style: new TextStyle(
                                  color: Color(0xff0077B5),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            new TextSpan(
                                text: 'and', style: TextStyle(fontSize: 14)),
                            new TextSpan(
                              text: ' Privacy Policy',
                              style: new TextStyle(
                                  color: Color(0xff0077B5),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/Navigation Screen');
                  },
                  child: Container(
                    height: 60,
                    child: BlueButton(title: 'SignUp', width: width),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already on koolib?"),
                    InkWell(
                      onTap: this.widget.togglePage,
                      child: Text(
                        "  Login ",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0077B5),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(children: <Widget>[
                    Expanded(
                        child: Divider(
                      color: Color(0xFFCFCCCC),
                      height: 10,
                    )),
                    Text(
                      "  or  ",
                      style: TextStyle(
                          fontSize: 19,
                          color: Color(0xFF00A0DC),
                          fontWeight: FontWeight.w600),
                    ),
                    Expanded(
                        child: Divider(
                      color: Color(0xFFCFCCCC),
                      height: 10,
                    )),
                  ]),
                ),
                SizedBox(height: 30),
                SvgPicture.asset(
                  'assets/loginsvg/facebooklogin.svg',
                ),
                SizedBox(height: 10),
                SvgPicture.asset(
                  'assets/loginsvg/googlelogin.svg',
                ),
                SizedBox(height: 10),
                SvgPicture.asset(
                  'assets/loginsvg/applelogin.svg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
