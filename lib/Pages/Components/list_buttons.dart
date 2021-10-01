import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListButtons extends StatelessWidget {
  final IconData? icon;
  final bool check;
  final String? title;
  const ListButtons({Key? key, this.icon, required this.check, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 0),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width * 0.08,
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.grey.withOpacity(0.2)),
        ),
        child: IconButton(
          icon: check
              ? Icon(
                  icon,
                  color: Colors.grey,
                  size: 20,
                )
              : Text('$title'),
          onPressed: () {},
        ),
      ),
    );
  }
}
