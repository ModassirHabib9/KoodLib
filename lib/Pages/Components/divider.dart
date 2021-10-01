import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 30,
      child: Divider(
        color: Colors.grey.withOpacity(0.3),
        thickness: 0.9,
      ),
    );
  }
}
