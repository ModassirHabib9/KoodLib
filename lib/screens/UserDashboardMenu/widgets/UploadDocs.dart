import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/UserSecuritySettingPage.dart';

class UploadDocuments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 107.0,
      width: 107.0,
      child: FDottedLine(
        color: Colors.lightBlue[600],
        strokeWidth: 2.0,
        dottedLength: 10.0,
        space: 2.0,
        child: Center(
            child: InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => UserSecurityPage()));
          },
          child: Icon(Icons.camera_alt_outlined),
        )),
      ),
    );
  }
}
