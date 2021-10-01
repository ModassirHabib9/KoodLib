import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/components/textfield_with_astrick.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchWidget extends StatelessWidget {
  double width, width2;
  SearchWidget({required this.width, required this.width2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: width * width2,
                child: Text(
                  'Search:  ',
                  style: TextStyle(
                    color: HexColor('#A1A1A1'),
                  ),
                ),
                alignment: Alignment.centerRight,
              ),
              // SizedBox(
              //   width: 10.0,
              // ),
              Expanded(
                child: SizedBox(
                  // width: width * 0.73,
                  height: 40.0,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(4.0),
                      fillColor: Colors.white,
                      filled: true,
                      isDense: true,
                      // labelText: "Enter Date", //label text of field
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.blueAccent,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffA1A1A1), width: 1.0),
                          borderRadius: BorderRadius.circular(6.0)),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
