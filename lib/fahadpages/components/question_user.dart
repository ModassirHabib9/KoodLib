import 'package:flutter/material.dart';

class QuestionUser extends StatelessWidget {
  const QuestionUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Color(0xffA1A1A1), width: 0.5),
          boxShadow: [
            // BoxShadow(
            //   color: Colors.grey.withOpacity(0.5),
            //   spreadRadius: 5,
            //   blurRadius: 5,
            //   offset: Offset(0, 3), // changes position of shadow
            // ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 15.0,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(45.0),
                        child: Image.asset('assets/images/testimage.jpg')),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Text(
                    'User Name',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ],
              ),
              SizedBox(
                height: 9.0,
              ),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis?'),
            ],
          ),
        ),
      ),
    );
  }
}
