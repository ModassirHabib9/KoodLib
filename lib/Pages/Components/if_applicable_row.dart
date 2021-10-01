import 'package:flutter/cupertino.dart';

class IfApplicableRow extends StatelessWidget {
  final String title;
  final String subTitle;
  const IfApplicableRow({Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        Text(
          '$title',
          style:
              TextStyle(color: Color(0xff0077B5), fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10),
        Text(
          '$subTitle',
          style: TextStyle(
            color: Color(0xff0077B5),
          ),
        ),
      ],
    );
  }
}
