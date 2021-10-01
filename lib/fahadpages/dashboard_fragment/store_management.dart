import 'dart:convert';
import 'dart:io';

import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/components/description_textfield.dart';
import 'package:flutter_enter/fahadpages/components/submit_for_review_button.dart';
import 'package:flutter_enter/fahadpages/components/textfield_with_astrick.dart';
import 'package:flutter_enter/fahadpages/dashboard_fragment/store_management2.dart';
import 'package:flutter_enter/fahadpages/manage_details_pages/manage_details_main_page.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class StoreManagement extends StatefulWidget {
  @override
  _StoreManagementState createState() => _StoreManagementState();
}

class _StoreManagementState extends State<StoreManagement> {
  final textController = TextEditingController();
  File? _pickedImage;
  String base64Image = '';

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, left: 50.0, right: 50.0),
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
                                    _showPickOptionsDialog(context);
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
                  title: 'TextField',
                  hint: 'lorem ipsum',
                ),
                SizedBox(
                  height: 20.0,
                ),
                DescriptionTextField(
                  title: 'Description',
                  hint: 'Description',
                  words: 300,
                  maxlines: 5,
                ),
                SizedBox(
                  height: 20.0,
                ),
                SubmitForReviewButton(
                  width: width,
                  onTapFunction: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoreManagement2()));
                  },
                  height: height,
                  roundness: 27.0,
                  title: 'Submit for reviews',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _loadPicker(ImageSource source) async {
    File picked = (await ImagePicker.pickImage(source: source)) as File;
    if (picked != null) {
      _cropImage(picked);
    }
    Navigator.pop(context);
  }

  _cropImage(File picked) async {
    File? cropped = await ImageCropper.cropImage(
      androidUiSettings: AndroidUiSettings(
        statusBarColor: Colors.red,
        toolbarColor: Colors.red,
        toolbarTitle: "Crop Image",
        toolbarWidgetColor: Colors.white,
      ),
      sourcePath: picked.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio16x9,
        CropAspectRatioPreset.ratio4x3,
      ],
      maxWidth: 800,
    );
    if (cropped != null) {
      setState(() {
        _pickedImage = cropped;
        List<int> imageBytes = _pickedImage!.readAsBytesSync();
        print(imageBytes);
        base64Image = base64Encode(imageBytes);
        print(base64Image);
      });
    }
  }

  void _showPickOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text("Pick from Gallery"),
              onTap: () {
                _loadPicker(ImageSource.gallery);
              },
            ),
            ListTile(
              title: Text("Take a pictuer"),
              onTap: () {
                _loadPicker(ImageSource.camera);
              },
            )
          ],
        ),
      ),
    );
  }
}
