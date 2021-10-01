import 'package:flutter/material.dart';

class UserSocialMediaLink extends StatelessWidget {
  final String UserName;
  final String UserLink;
  final Icon icon;
  const UserSocialMediaLink(
      {required this.UserName, required this.UserLink, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    UserName,
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
                  children: [
                    icon,
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(UserLink)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
