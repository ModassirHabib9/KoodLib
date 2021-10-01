import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/page_number.dart';
import 'package:flutter_enter/fahadpages/dashboard_fragment/message_open.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/UserAccountSettings.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/UserMessageOpen.dart';
import 'package:number_paginator/number_paginator.dart';

class UserMessagesPage extends StatefulWidget {
  @override
  _UserMessagesPageState createState() => _UserMessagesPageState();
}

class _UserMessagesPageState extends State<UserMessagesPage> {
  int _numPages = 10;
  int _currentPage = 0;
  final ListTiles = <Widget>[];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                reverse: false,
                itemCount: 10,
                itemBuilder: (BuildContext ctxt, int index) {
                  return new MessageBoxWithAvatarUsername();
                },
                separatorBuilder: (context, _) => Divider(
                  height: 1,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              width: width * 0.7,
              child: NumberPaginator(
                height: 40.0,
                buttonShape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),
                buttonSelectedBackgroundColor: Colors.white,
                buttonSelectedForegroundColor: Colors.blueAccent,
                buttonUnselectedForegroundColor: Colors.black,
                numberPages: _numPages,
                onPageChange: (int index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageBoxWithAvatarUsername extends StatelessWidget {
  const MessageBoxWithAvatarUsername({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MessageOpen()));
      },
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset("assets/mud.jpg"),
        ),
      ),
      title: Text(
        "User Name",
        style: TextStyle(color: Colors.blue),
      ),
      subtitle: Text(
        "Lorem ipsum dolor sit amet, consecte...",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
