import 'package:flutter/material.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/widgets/Checkboxs.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/widgets/ToggleButton.dart';
// import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

class UserNotificationSettings extends StatefulWidget {
  @override
  _UserNotificationSettingsState createState() =>
      _UserNotificationSettingsState();
}

class _UserNotificationSettingsState extends State<UserNotificationSettings> {
  bool status1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 341,
                width: double.infinity,
                child: Card(
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Color(0xffA1A1A1), width: 0.5),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 5.0, left: 12.0, right: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text(
                            "Security notification settings",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SwitchButton(),
                        SwitchButton(),
                        SwitchButton(),
                        SwitchButton(),
                        SwitchButton(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 341,
                width: double.infinity,
                child: Card(
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Color(0xffA1A1A1), width: 0.5),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 5.0, left: 12.0, right: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text(
                            "Security notification settings",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Checkboxs(),
                        Checkboxs(),
                        Checkboxs(),
                        Checkboxs(),
                        Checkboxs(),
                        Checkboxs(),
                        Checkboxs(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
