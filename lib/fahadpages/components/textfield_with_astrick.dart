import 'package:flutter/material.dart';

class textFieldWithAstrik extends StatelessWidget {
  textFieldWithAstrik(
      {required this.textController, required this.title, required this.hint});

  final TextEditingController textController;
  String title, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Row(
            children: [
              Text(
                '$title',
                style: TextStyle(
                    color: Colors.lightBlue[600], fontWeight: FontWeight.bold),
              ),
              Text(
                ' *',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(),
          child: Container(
            width: double.infinity,
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: '$hint',
                hintStyle: TextStyle(
                  color: Colors.blueGrey[200],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide(
                    color: Colors.blueGrey.shade400,
                  ),
                ),
                // prefixIcon: Icon(Icons.account_box_sharp),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
