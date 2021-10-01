import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(children: [
      Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 115,
          decoration: BoxDecoration(border: Border.all(width: 1)),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                FutureBuilder(builder: (context, snapshot) {
                  return Stack(children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            height: 70,
                            width: 68,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                image: DecorationImage(
                                    image: NetworkImage('user_pic'),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        Text(
                          'Name Surname',
                          style: TextStyle(),
                        )
                      ],
                    ),
                  ]);
                })
              ])))
    ]))));
  }
}
