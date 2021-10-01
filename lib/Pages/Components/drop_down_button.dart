import 'package:flutter/material.dart';

class DropDownButton extends StatelessWidget {
  final String itemSelectedValue;
  final List<String> items;
  final dynamic onPressed;
  DropDownButton(
      {required this.items,
      required this.itemSelectedValue,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Color(0xffCFCCCC), width: 2)),
      height: 65,
      child: FormField<String>(
        builder: (FormFieldState<String> state) {
          return InputDecorator(
            decoration: InputDecoration(
              // labelStyle: textStyle,
              errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
              border: InputBorder.none,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: itemSelectedValue,
                isDense: true,
                onChanged: onPressed,
                items: items.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
