import 'package:flutter/material.dart';

class UserPhotoLinkMedia extends StatelessWidget {
  final String SocialName;
  final String LinkName;
  final Icon icon;
  final Color buttonColor;

  const UserPhotoLinkMedia(
      {Key? key,
      required this.SocialName,
      required this.LinkName,
      required this.icon,
      required this.buttonColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 150,
        child: Card(
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xffA1A1A1), width: 0.5),
          ),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      SocialName,
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  height: 30,
                  child: Row(
                    children: [icon, Text(LinkName)],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 30,
                    width: 136,
                    child: Container(
                      decoration: BoxDecoration(
                          color: buttonColor,
                          border:
                              Border.all(color: Color(0xFF00A0DC), width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: new Center(
                        child: new Text(
                          // "Link",
                          buttonColor == Colors.white ? "Link" : "Unlink",
                          style: TextStyle(
                              color: buttonColor != Colors.white
                                  ? Colors.white
                                  : Color(0xFF00A0DC),
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
