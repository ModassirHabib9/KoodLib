import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: width * 0.39,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0xff00A0DC), width: 1.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.save_alt_outlined,
            color: Color(0xff00A0DC),
          ),
          SizedBox(width: 10),
          Text(
            'Save',
            style: TextStyle(color: Color(0xff00A0DC)),
          ),
        ],
      ),
    );
  }
}
