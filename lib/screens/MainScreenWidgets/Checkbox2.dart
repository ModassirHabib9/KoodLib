import 'package:flutter/material.dart';

class Checkbox1 extends StatefulWidget {
  @override
  _Checkbox1State createState() => _Checkbox1State();
}

class _Checkbox1State extends State<Checkbox1> {
  bool _checkBoxVal11 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.scale(
        scale: 1.5,
        child: new Checkbox(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          value: this._checkBoxVal11,
          onChanged: (bool? value1) {
            setState(() {
              this._checkBoxVal11 = value1!;
            });
          },
        ),
      ),
    );
  }
}
