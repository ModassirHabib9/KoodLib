import 'package:flutter/material.dart';

class SearchWidget2 extends StatelessWidget {
  const SearchWidget2({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      width: width * 10,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8.0),
          fillColor: Colors.white,
          filled: true,
          isDense: true,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey),
          // labelText: "Enter Date", //label text of field
          prefixIcon: Icon(
            Icons.search,
            color: Colors.blueAccent,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffA1A1A1), width: 1.0),
              borderRadius: BorderRadius.circular(3.0)),
        ),
      ),
    );
  }
}
