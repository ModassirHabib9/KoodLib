import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/blue_button.dart';
import '../screens/ForgotPassword.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  final dynamic togglePage;
  const LoginPage({Key? key, required this.togglePage}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Login",
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
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/Authentication');
                  },
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF0077B5),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 60,
                  child: BlueButton(title: 'Login', width: width),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have An Account?"),
                    InkWell(
                      onTap: this.widget.togglePage,
                      child: Text(
                        " Sign up",
                        style: TextStyle(
                          color: Color(0xFF00A0DC),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
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
                SizedBox(height: 20),
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
