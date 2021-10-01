import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/UserAccountSettings2Page.dart';

class DottedLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
            height: 360,
            child: Card(
                color: Colors.white,
                child: Padding(
                    padding:
                        const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "User Photo",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 17),
                              )),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Center(
                              child: Container(
                                height: 230,
                                child: FDottedLine(
                                  color: Colors.lightBlue[600],
                                  height: 120.0,
                                  width: double.infinity,
                                  strokeWidth: 2.0,
                                  dottedLength: 10.0,
                                  space: 2.0,
                                  child: Center(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    UserAccountSettings2Page()));
                                      },
                                      child: Icon(Icons.camera_alt_outlined),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ])))));
  }
}
