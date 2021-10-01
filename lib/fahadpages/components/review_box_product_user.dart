import 'package:flutter/material.dart';

class ReviewBoxProductUser extends StatelessWidget {
  const ReviewBoxProductUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Color(0xffA1A1A1), width: 0.5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Product Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 15.0,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(45.0),
                        child: Image.asset('assets/images/testimage.jpg')),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'User Name',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ],
              ),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis?')
            ],
          ),
        ),
      ),
    );
  }
}
