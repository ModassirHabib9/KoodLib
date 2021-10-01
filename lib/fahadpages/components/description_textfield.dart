import 'package:flutter/material.dart';

class DescriptionTextField extends StatelessWidget {
  DescriptionTextField(
      {required this.words,
      required this.title,
      required this.hint,
      required this.maxlines});

  int words, maxlines;
  String title, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0, top: 12.0),
          child: Text(
            '$title',
            style: TextStyle(
                color: Colors.lightBlue[600], fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.blueGrey,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: TextField(
                // readOnly: editable,
                maxLength: words,
                // style: TextStyle(
                //   color: Colors.green[300],
                // ),
                maxLines: maxlines,
                decoration: InputDecoration.collapsed(
                  hintText: "$hint",
                  hintStyle: TextStyle(
                    color: Colors.blueGrey[200],
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
