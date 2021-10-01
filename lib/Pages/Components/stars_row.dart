import 'package:flutter/material.dart';

class StarsRow extends StatelessWidget {
  final String title;
  const StarsRow({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isNotPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Color(0xffF99746),
        ),
        Icon(
          Icons.star,
          color: Color(0xffF99746),
        ),
        Icon(
          Icons.star,
          color: Color(0xffF99746),
        ),
        Icon(
          Icons.star,
          color: Color(0xffF99746),
        ),
        Icon(
          Icons.star,
          color: Color(0xffF99746),
        ),
        SizedBox(width: 5),
        Text(
          title,
        ),
      ],
    );
  }
}
