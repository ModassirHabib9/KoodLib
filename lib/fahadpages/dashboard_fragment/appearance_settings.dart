import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/components/appearance_box_page.dart';

class AppearanceSettings extends StatefulWidget {
  @override
  _AppearanceSettingsState createState() => _AppearanceSettingsState();
}

class _AppearanceSettingsState extends State<AppearanceSettings> {
  bool shouldCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Column(
            children: [
              AppearancePageBox(shouldCheck: shouldCheck),
              AppearancePageBox(shouldCheck: shouldCheck),
              AppearancePageBox(shouldCheck: shouldCheck),
            ],
          ),
        ),
      ),
    );
  }
}
