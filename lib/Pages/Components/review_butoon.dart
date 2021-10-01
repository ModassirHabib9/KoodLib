import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final Color color;
  const ReviewButton({
    Key? key,
    required this.text,
    required this.color,
    required this.icon,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    var isNoPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 3),
        width: width * 0.55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: color, width: 2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                  color: color,
                  fontSize: isNoPortrait ? width * 0.037 : width * 0.025),
            ),
          ],
        ),
      ),
    );
  }
}
