import 'package:flutter/material.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/YourProductsNone.dart';

class YourProductBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CartPage2()));
        },
        child: SizedBox(
          child: Card(
            color: Color(0xFFF5FCFF),
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      'assets/images/Rectangltwo.jpg',
                      height: 196,
                      width: 320,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Text(
                      "Name product",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF373737),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    "Work",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 76,
                    width: 261,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Color(0xFF373737)),
                    ),
                  ),
                  Divider(height: 10, color: Colors.black),
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.article_outlined),
                        Text("4 Files"),
                      ],
                    ),
                  ),
                  Text(
                    "\$ 499",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SizedBox(
                      height: 48,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Color(0xFF00A0DC), width: 3),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: new Center(
                          child: new Text(
                            "Buy Now",
                            style: TextStyle(
                                color: Color(0xFF00A0DC), fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
