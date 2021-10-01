import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Homepage2_e_CommerceService.dart';

class ProductCatalog extends StatefulWidget {
  const ProductCatalog({Key? key}) : super(key: key);

  @override
  _ProductCatalogState createState() => _ProductCatalogState();
}

class _ProductCatalogState extends State<ProductCatalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Homepage2_e_CommerceService()));
                  },
                  child: SizedBox(
                    height: 46,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xFF00A0DC), width: 3),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: new Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_link,
                              color: Colors.blue,
                            ),
                            new Text(
                              " Edit order",
                              style: TextStyle(
                                  color: Color(0xFF00A0DC), fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
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
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
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
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  child: Card(
                    color: Color(0xFFFFF8ED),
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
                              color: Color(0xFFFF9900),
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
                            "999",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.black54,
                                fontSize: 18),
                          ),
                          Text(
                            "499",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFFFF9900), fontSize: 30),
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
                                          color: Color(0xFFFF9900), width: 3),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  child: new Center(
                                    child: new Text(
                                      "Add To Cart",
                                      style: TextStyle(
                                          color: Color(0xFFFF9900),
                                          fontSize: 22),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
