import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/dashboard_fragment/store_management2.dart';

class SynchronizeServiceButton extends StatelessWidget {
  SynchronizeServiceButton(
      {this.width,
      required this.onTapFunction,
      this.height,
      required this.roundness,
      required this.title,
      this.fullwidth = false,
      this.bgcolor,
      this.fontSize});
  VoidCallback onTapFunction;

  final double? width;
  final double? height;
  final double roundness;
  String title;
  bool fullwidth;
  Color? bgcolor;
  double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: fullwidth
            ? const EdgeInsets.symmetric(
                vertical: 20.0,
                // horizontal: 0.0,
              )
            : const EdgeInsets.symmetric(
                vertical: 20.0,
                // horizontal: 10.0,
              ),
        child: MaterialButton(
          onPressed: onTapFunction,
          child: Container(
            width: width != null ? width : null,
            decoration: BoxDecoration(
              color: bgcolor,
              borderRadius: BorderRadius.circular(roundness),
              border: Border.all(
                color: Colors.lightBlueAccent,
                width: 2.0,
              ),
            ),
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '$title',
                style: TextStyle(
                    color:
                        bgcolor != null ? Colors.white : Colors.lightBlueAccent,
                    fontSize: fontSize != null ? fontSize : 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
