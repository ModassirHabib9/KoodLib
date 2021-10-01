import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
    required this.obscureText,
  }) : super(key: key);

  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 30.0,
      width: width * 0.5,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
          suffixIcon: GestureDetector(
            onTap: () {
              // setState(() {
              //   obscureText = !obscureText;
              // });
            },
            child: Icon(
              obscureText == true
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
            ),
          ),
          hintText: 'Password',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: Color(0xFFAAABB0))),
          // prefixIcon: Icon(Icons.lock),
        ),
      ),
    );
  }
}
