import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesignedDropDownMenu extends StatelessWidget {
  final List<String> item;
  final String itemSelectedValue;
  final dynamic onPressed;
  DesignedDropDownMenu(
      {required this.itemSelectedValue,
      required this.item,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Color(0xff00A0DC),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(0xffCFCCCC), width: 2)),
      height: 55,
      width: double.infinity,
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          icon: Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
          iconSize: 30,
          dropdownColor: Color(0xff00A0DC),
          style: TextStyle(color: Colors.blue),
          value: itemSelectedValue,
          isDense: true,
          onChanged: onPressed,
          items: item.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value,
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            );
          }).toList(),
        ),
      ),
    );
  }
}
