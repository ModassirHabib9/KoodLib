import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'CheckOutPage.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 268,
                  child: Text(
                    "Oh, cart is empty...",
                    style: TextStyle(fontSize: 24, color: Colors.blue),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 51,
                  width: 270,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis ",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 250,
                  child: SvgPicture.asset(
                    'assets/iconsvg/cartimage.svg',
                    height: 179.0,
                    width: 216.0,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
                SizedBox(height: 20),
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
                        "Back to catalog",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CheckOutPage()));
                      },
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
