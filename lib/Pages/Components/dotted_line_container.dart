import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DottedLineContainer extends StatelessWidget {
  const DottedLineContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FDottedLine(
      color: Color(0xff00A0DC),
      strokeWidth: 3.0,
      dottedLength: 15.0,
      space: 5.0,
      child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Icon(
            Icons.camera_alt_outlined,
            color: Color(0xff0077B5),
            size: 50,
          )),
    );
  }
}
