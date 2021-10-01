import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: 10.0,
  ),
  hintText: 'Write a reply',
  border: InputBorder.none,
);

const kMessageTextFieldDecoration2 = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: 10.0,
  ),
  hintText: 'Type your message here...',
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Color(0xFFBDBDBD), width: 2.0),
  ),
);

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

var kContainerDecoration = BoxDecoration(
    color: HexColor('#EBF4F9'),
    borderRadius: BorderRadius.circular(10),
    border: Border.all(color: Colors.blue),
    boxShadow: [
      BoxShadow(
        offset: Offset(0, 0),
        color: HexColor('#EBF4F9'),
        spreadRadius: 0.5,
        blurRadius: 0.5,
      )
    ]);

var kContainerDecoration2 = BoxDecoration(
    color: HexColor('#FFFFFF'),
    borderRadius: BorderRadius.circular(10),
    border: Border.all(color: Colors.blue),
    boxShadow: [
      BoxShadow(
        offset: Offset(0, 0),
        color: HexColor('#EBF4F9'),
        spreadRadius: 0.5,
        blurRadius: 0.5,
      )
    ]);
