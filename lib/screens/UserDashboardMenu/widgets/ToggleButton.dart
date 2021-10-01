import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchButton extends StatefulWidget {
  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  final _controller01 = AdvancedSwitchController();
  bool status1 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AdvancedSwitch(
              activeColor: Color(0xff00A0DC),
              controller: _controller01,
            ),
          ),
          Expanded(child: Text("Lorem ipsum dolor sit amet, consecore")),
        ],
      ),
    );
  }
}
