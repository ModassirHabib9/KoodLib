import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListenRow extends StatelessWidget {
  final String title;
  final String image;
  ListenRow({required this.title, required this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 10,
            backgroundColor: Colors.transparent,
          ),
          SizedBox(width: 10),
          Text(
            '$title',
            style: TextStyle(color: Colors.black.withOpacity(0.7)),
          )
        ],
      ),
    );
  }
}
