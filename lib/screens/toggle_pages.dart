import 'package:flutter/cupertino.dart';
import 'package:flutter_enter/Pages/SignUp.dart';
import 'package:flutter_enter/Pages/login.dart';

class TogglePages extends StatefulWidget {
  const TogglePages({Key? key}) : super(key: key);

  @override
  _TogglePagesState createState() => _TogglePagesState();
}

class _TogglePagesState extends State<TogglePages> {
  bool check = false;
  toggle() {
    setState(() {
      check = !check;
    });
  }

  @override
  Widget build(BuildContext context) {
    return check
        ? LoginPage(
            togglePage: () {
              toggle();
            },
          )
        : Sign_Up(
            togglePage: () {
              toggle();
            },
          );
  }
}
