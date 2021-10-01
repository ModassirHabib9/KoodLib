import 'package:flutter/material.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/UserMessagePage.dart';
import 'package:flutter_svg/svg.dart';

class DownloadAllReportButton extends StatelessWidget {
  const DownloadAllReportButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => UserMessagesPage()));
        },
        child: SizedBox(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xFF00A0DC), width: 2),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: new Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('assets/iconsvg/DownloadSimple.svg'),
                    new Text(
                      "Download all report",
                      style: TextStyle(color: Color(0xFF00A0DC), fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
