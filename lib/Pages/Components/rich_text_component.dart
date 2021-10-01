import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RichTextComponent extends StatelessWidget {
  final String heading;
  final String text;
  const RichTextComponent({
    Key? key,
    required this.heading,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: RichText(
        text: new TextSpan(
          style: new TextStyle(
            fontSize: 16.5,
            color: Colors.black,
          ),
          children: <TextSpan>[
            new TextSpan(
                text: '$heading  ',
                style: new TextStyle(
                    color: Color(0xff0077B5), fontWeight: FontWeight.bold)),
            new TextSpan(text: '$text'),
          ],
        ),
      ),
    );
  }
}
