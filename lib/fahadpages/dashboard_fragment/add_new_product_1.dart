import 'package:flutter/material.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:flutter_enter/fahadpages/components/description_textfield.dart';
import 'package:flutter_enter/fahadpages/components/form_field_widget.dart';
import 'package:flutter_enter/fahadpages/components/text_field_widget.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'add_new_product_2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:io';
import 'dart:convert';

class AddNewProduct1 extends StatefulWidget {
  @override
  _AddNewProduct1State createState() => _AddNewProduct1State();
}

class _AddNewProduct1State extends State<AddNewProduct1> {
  final textController = TextEditingController();
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
  File? _pickedImage;
  String base64Image = '';

  var _itemSelectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#E5E5E5'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30.0, left: 50.0, right: 50.0),
                    child: Container(
                      alignment: Alignment.center,
                      // width: double.infinity,
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
                            'Upload file',
                            style: TextStyle(
                              color: Colors.lightBlue[600],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30.0,
                                left: 12.0,
                                right: 12.0,
                                bottom: 12.0),
                            child: Container(
                              // width: double.infinity,
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
                  TextFieldWidget(
                    textController: textController,
                    hint: 'Lorem ipsum',
                    title: 'Product Title',
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
                  DescriptionTextField(
                    title: 'Description',
                    hint: 'Description',
                    words: 400,
                    maxlines: 5,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Row(
                          children: [
                            Text(
                              'Category',
                              style: TextStyle(
                                  color: Colors.lightBlue[600],
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: FormField<String>(
                          builder: (FormFieldState<String> state) {
                            return InputDecorator(
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  // labelStyle: textStyle,
                                  errorStyle: TextStyle(
                                      color: Colors.redAccent, fontSize: 16.0),
                                  hintText: 'Please select expense',
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                              // isEmpty: _currentSelectedValue == '',
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: _itemSelectedValue,
                                  isDense: true,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      _itemSelectedValue = newValue;
                                      state.didChange(newValue);
                                    });
                                  },
                                  items: _items.map((String value) {
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  FormFieldWidget(
                    itemSelectedValue: _itemSelectedValue,
                    items: _items,
                    title: 'Language made in',
                  ),
                  SizedBox(
                    height: 26.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0,
                                  left: 40.0,
                                  right: 40.0,
                                  bottom: 20.0),
                              child: SvgPicture.asset(
                                  'assets/iconsvg/vectorleft.svg'),
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddNewProduct2()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0,
                                  left: 40.0,
                                  right: 40.0,
                                  bottom: 20.0),
                              child: SvgPicture.asset(
                                  'assets/iconsvg/vectorright.svg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
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
