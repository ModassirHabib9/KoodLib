import 'dart:io';

import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/components/description_textfield.dart';
import 'package:flutter_enter/fahadpages/components/form_field_widget.dart';
import 'package:flutter_enter/fahadpages/components/submit_for_review_button.dart';
import 'package:flutter_enter/fahadpages/components/text_field_widget.dart';
import 'package:flutter_svg/svg.dart';

class ManageDetailsStoreDetails extends StatefulWidget {
  @override
  _ManageDetailsStoreDetailsState createState() =>
      _ManageDetailsStoreDetailsState();
}

class _ManageDetailsStoreDetailsState extends State<ManageDetailsStoreDetails> {
  var _items = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];
  var _itemSelectedValue;
  File? _pickedImage;
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 50.0, right: 50.0),
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
                  'Enter your company logo',
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
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 50.0, right: 50.0),
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
                  'Upload you Document',
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
        FormFieldWidget(
          items: _items,
          itemSelectedValue: _itemSelectedValue,
          title: 'Select person type',
        ),
        TextFieldWidget(
          textController: textController,
          title: 'Enter Your Firm Name',
          hint: 'Firm Name',
        ),
        DescriptionTextField(
          title: 'Description',
          hint: 'Description',
          words: 300,
          maxlines: 5,
        ),
        TextFieldWidget(
            textController: textController, title: 'City', hint: ''),
        SizedBox(
          height: 13.0,
        ),
        TextFieldWidget(
            textController: textController, title: 'Postal code', hint: ''),
        SizedBox(
          height: 10.0,
        ),
        TextFieldWidget(
            textController: textController, title: 'Street', hint: ''),
        SizedBox(
          height: 10.0,
        ),
        TextFieldWidget(
            textController: textController, title: 'Province', hint: ''),
        SizedBox(
          height: 10.0,
        ),
        TextFieldWidget(
            textController: textController, title: 'Website', hint: ''),
        SizedBox(
          height: 10.0,
        ),
        TextFieldWidget(
            textController: textController, title: 'Phone', hint: ''),
        SizedBox(
          height: 10.0,
        ),
        TextFieldWidget(textController: textController, title: 'Fax', hint: ''),
        SizedBox(
          height: 10.0,
        ),
        TextFieldWidget(
            textController: textController,
            title: 'Social media accounts',
            hint: ''),
        TextFieldWidget(textController: textController, title: '', hint: ''),
        TextFieldWidget(textController: textController, title: '', hint: ''),
        SizedBox(
          height: 10.0,
        ),
        DescriptionTextField(
          title: 'Description',
          hint: 'Description',
          words: 300,
          maxlines: 5,
        ),
        SubmitForReviewButton(
          width: width,
          onTapFunction: () {},
          height: height - height * 0.3,
          roundness: 12,
          title: 'Add Success Case',
        ),
      ],
    );
  }
}
