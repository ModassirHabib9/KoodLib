import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final Icon icon;
  const SocialMediaButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.3)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: icon,
      ),
    );
  }
}
