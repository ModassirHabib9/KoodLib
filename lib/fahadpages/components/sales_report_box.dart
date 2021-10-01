import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SalesReportBox extends StatelessWidget {
  const SalesReportBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: HexColor('#DCDCDC'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Product Name'),
                  Row(
                    children: [
                      Text('Buyer: '),
                      CircleAvatar(
                        radius: 15.0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(45.0),
                            child: Image.asset('assets/images/testimage.jpg')),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'User name',
                        style: TextStyle(
                          color: Colors.lightBlue,
                        ),
                      ),
                    ],
                  ),
                  Text('Quantity: 12'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Price: '),
                      Text(
                        '\$300',
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                    ],
                  ),
                  // Row(
                  //   children: [
                  //     Text('Partner revenue: '),
                  //     Text(
                  //       '\$300',
                  //       style: TextStyle(color: Colors.lightBlue),
                  //     ),
                  //   ],
                  // ),
                  RichText(
                    text: new TextSpan(
                      style: new TextStyle(
                        // fontSize: 13.5,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        new TextSpan(
                          text: 'Partner revenue: ',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        new TextSpan(
                            text: '\$300',
                            style: TextStyle(
                                color: Colors.lightBlue, fontSize: 12.0)),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
