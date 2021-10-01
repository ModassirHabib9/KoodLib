import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerifiedRow extends StatelessWidget {
  final String title;
  final bool check;
  const VerifiedRow({
    Key? key,
    required this.check,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: Row(
        mainAxisAlignment:
            check ? MainAxisAlignment.start : MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Color(0xff27AE60),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 15,
            ),
          ),
          SizedBox(width: 10),
          Text(title),
        ],
      ),
    );
  }
}
