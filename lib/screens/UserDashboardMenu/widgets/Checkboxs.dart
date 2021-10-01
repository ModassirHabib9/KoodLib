import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';

class Checkboxs extends StatefulWidget {
  @override
  _CheckboxsState createState() => _CheckboxsState();
}

class _CheckboxsState extends State<Checkboxs> {
  bool shouldCheck = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        children: [
          Transform.scale(
            scale: 1.5,
            child: CustomCheckBox(
              value: shouldCheck,
              shouldShowBorder: true,
              borderColor: Color(0xffA1A1A1),
              checkedFillColor: Color(0xff00A0DC),
              borderRadius: 4,
              borderWidth: 1,
              checkBoxSize: 18,
              onChanged: (val) {
                //do your stuff here
                setState(() {
                  shouldCheck = val;
                });
              },
            ),
          ),
          Expanded(
            child: Text(
              "Lorem ipsum dolor sit",
              style: TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
