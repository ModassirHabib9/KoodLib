import 'package:flutter/material.dart';

class ContainerText extends StatelessWidget {
  final String samllText;
  final String largeText;
  ContainerText({required this.samllText, required this.largeText});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              samllText,
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 90,
            child: Text(
              largeText,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
