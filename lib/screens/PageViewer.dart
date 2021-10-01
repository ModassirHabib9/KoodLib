import 'package:flutter/material.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: PageView(
          children: <Widget>[
            Container(
              child: CircleAvatar(
                backgroundColor: Color(0xFFDCE6EA),
                radius: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Color(0xFF0077B5),
                    size: 30,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF0077B5),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Sell & Buy",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF0077B5),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              child: SizedBox(
                height: 88,
                width: 258,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              child: Center(child: Text("Page 2")),
              color: Colors.blueAccent,
            )
          ],
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
