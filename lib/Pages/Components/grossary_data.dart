import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlossaryData extends StatelessWidget {
  const GlossaryData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ADJUDICATE',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xff0077B5)),
        ),
        SizedBox(height: 10),
        Text(
          'To make a decision or determination, usually related to a legal issue or dispute. When an immigration case has been “adjudicated,” it means that an officer has made a decision to either approve or deny the requested immigration benefit.',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Divider(
            thickness: 0.6,
            color: Colors.black.withOpacity(0.3),
          ),
        )
      ],
    );
  }
}
