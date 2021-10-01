import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhiteBox extends StatelessWidget {
  final String title;
  const WhiteBox({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 5),
          child: Text(
            title,
            style: TextStyle(
              color: Color(0xff0077B5),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              labelText: title,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xFFAAABB0),
                ),
              ),
              // prefixIcon: Icon(Icons.account_box_sharp),
            ),
          ),
        ),
      ],
    );
  }
}
