import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  final String image;
  const ProfilePhoto({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 50,
        ),
        SizedBox(height: 5),
        Text(
          'Name Surname',
          style: TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
