import 'dart:io';

import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/components/description_textfield.dart';
import 'package:flutter_enter/fahadpages/components/textfield_with_astrick.dart';
import 'package:flutter_svg/svg.dart';

class StoreDetails extends StatefulWidget {
  @override
  _StoreDetailsState createState() => _StoreDetailsState();
}

class _StoreDetailsState extends State<StoreDetails> {
  final textController = TextEditingController();
  File? _pickedImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 30.0,
          ),
          child: Container(
            width: double.infinity,
            height: 250.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 12.0,
                ),
                Text(
                  'Your Store Logo',
                  style: TextStyle(
                    color: Colors.lightBlue[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30.0, left: 12.0, right: 12.0, bottom: 12.0),
                  child: Container(
                    width: double.infinity,
                    height: 170.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    // child: Icon(Icons.home),
                    child: FDottedLine(
                      color: Colors.lightBlue[600],
                      height: 100.0,
                      width: 50,
                      strokeWidth: 2.0,
                      dottedLength: 10.0,
                      space: 2.0,
                      corner: FDottedLineCorner.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(0.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: _pickedImage != null
                              ? DecorationImage(
                                  image: FileImage(_pickedImage!),
                                  fit: BoxFit.cover,
                                )
                              : null,
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xffd9d9d9),
                              width: .8,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            // _showPickOptionsDialog(context);
                          },
                          child: _pickedImage == null
                              ? SvgPicture.asset(
                                  'assets/iconsvg/FileArrowDown.svg',
                                  height: 25,
                                  width: 25,
                                )
                              : null,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        textFieldWithAstrik(
            textController: textController,
            title: 'Store Name',
            hint: 'lorem ipsum'),
        SizedBox(
          height: 20.0,
        ),
        DescriptionTextField(
            words: 300, title: 'Description', hint: 'Description', maxlines: 5),
        SizedBox(
          height: 20.0,
        ),
        textFieldWithAstrik(
            textController: textController,
            title: 'Store Name',
            hint: 'lorem ipsum'),
        SizedBox(
          height: 20.0,
        ),
        textFieldWithAstrik(
            textController: textController,
            title: 'Store Name',
            hint: 'lorem ipsum'),
        SizedBox(
          height: 20.0,
        ),
        textFieldWithAstrik(
            textController: textController,
            title: 'Store Name',
            hint: 'lorem ipsum'),
        SizedBox(
          height: 20.0,
        ),
        textFieldWithAstrik(
            textController: textController,
            title: 'Store Name',
            hint: 'lorem ipsum'),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
