import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ShowEntries2 extends StatelessWidget {
  double? width2;
  ShowEntries2({this.width2});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
      ),
      child: Row(
        children: [
          Container(
            width: width2 != null ? width * width2! : width * 0.15,
            child: Text(
              "Show  ",
              style: TextStyle(
                color: HexColor('#A1A1A1'),
              ),
            ),
            alignment: Alignment.centerRight,
          ),
          Container(
            // width: 60,
            // height: 35,
            decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Color(0xffA1A1A1)),
                  left: BorderSide(width: 1.0, color: Color(0xffA1A1A1)),
                  right: BorderSide(width: 1.0, color: Color(0xffA1A1A1)),
                  bottom: BorderSide(width: 1.0, color: Color(0xffA1A1A1)),
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    child: Text("9",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xff0077B5))),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_drop_up,
                        size: 12,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 12,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "entries",
              style: TextStyle(
                color: HexColor('#A1A1A1'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
