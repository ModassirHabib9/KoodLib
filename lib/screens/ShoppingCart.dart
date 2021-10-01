import 'package:flutter/material.dart';
import 'CartPage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text(
                  "Shopping Cart",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF0077B5),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: SvgPicture.asset(
                  'assets/loginsvg/button1.svg',
                  width: 322,
                  height: 48,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: SvgPicture.asset(
                  'assets/loginsvg/Button2.svg',
                  width: 322,
                  height: 48,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 272,
                width: 340,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color(0xFFF5FCFF),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                'assets/images/Rectangltwo.jpg',
                                height: 119,
                                width: 119,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 146,
                                        height: 19,
                                        child: Text(
                                          "Lorem ispum",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xFF373737),
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Icon(
                                        Icons.close,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  SizedBox(
                                    width: 150,
                                    height: 71,
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis ",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF373737),
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 112,
                        child: Text(
                          "49",
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 24, color: Color(0xFF373737)),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 48,
                            width: 182,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Color(0xFF0077B5), width: 3),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.remove,
                                      color: Colors.blueGrey,
                                    ),
                                    new Text(
                                      "1",
                                      style: TextStyle(
                                          color: Color(0xFF00A0DC),
                                          fontSize: 22),
                                      textAlign: TextAlign.center,
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: Colors.blueGrey,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            height: 48,
                            width: 48,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Color(0xFFA1A1A1), width: 3),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: new Center(
                                child: new Icon(
                                  Icons.bookmark_border,
                                  color: Color(0xFFA1A1A1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 56.0, right: 56.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                    Text(
                      "You saved",
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 56, right: 56.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "466",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      "410",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    // color: Theme.of(context).primaryColor,
                    color: Color(0xFF00A0DC),
                    child: Text(
                      "Place an order",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => CartPage()));
                    },
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "You may also like to buy ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF0077B5),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Card(
                    color: Color(0xFFF5FCFF),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, left: 5.0, right: 5.0),
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
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFF373737)),
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
                            "499",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.blue, fontSize: 30),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 48,
                                width: 48,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Color(0xFFA1A1A1), width: 3),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  child: new Center(
                                    child: new Icon(
                                      Icons.favorite_border,
                                      color: Color(0xFFA1A1A1),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              SizedBox(
                                height: 48,
                                width: 193,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Color(0xFF00A0DC), width: 3),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  child: new Center(
                                    child: new Text(
                                      "Add To Cart",
                                      style: TextStyle(
                                          color: Color(0xFF00A0DC),
                                          fontSize: 22),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
