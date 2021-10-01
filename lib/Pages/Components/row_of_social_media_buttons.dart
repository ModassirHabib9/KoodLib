import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class RowOfSocialMediaButtons extends StatelessWidget {
  final String? title;
  const RowOfSocialMediaButtons({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? 'Share Episode',
          style: TextStyle(
            color: Color(0xff0077B5),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              FontAwesome.linkedin,
              color: Colors.blue[500],
            ),
            Icon(
              FontAwesome.google,
              color: Colors.red[400],
            ),
            Icon(
              FontAwesome.twitter,
              color: Colors.blue[400],
            ),
            Icon(FontAwesome.facebook, color: Colors.blue),
          ],
        ),
      ],
    );
  }
}
