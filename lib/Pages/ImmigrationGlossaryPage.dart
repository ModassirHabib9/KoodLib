import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Models/grid_model.dart';
import 'package:flutter_enter/Pages/reviews_page.dart';
import 'package:flutter_enter/Pages/Components/bottom_menu.dart';

import 'Components/grossary_data.dart';

class ImmigrationGlossaryPage extends StatefulWidget {
  const ImmigrationGlossaryPage({Key? key}) : super(key: key);

  @override
  _ImmigrationGlossaryPageState createState() =>
      _ImmigrationGlossaryPageState();
}

class _ImmigrationGlossaryPageState extends State<ImmigrationGlossaryPage> {
  List alphabets = [
    GridModel(title: 'A', checkState: false),
    GridModel(title: 'B', checkState: false),
    GridModel(title: 'C', checkState: false),
    GridModel(title: 'D', checkState: false),
    GridModel(title: 'E', checkState: false),
    GridModel(title: 'F', checkState: false),
    GridModel(title: 'G', checkState: false),
    GridModel(title: 'H', checkState: false),
    GridModel(title: 'I', checkState: false),
    GridModel(title: 'J', checkState: false),
    GridModel(title: 'K', checkState: false),
    GridModel(title: 'L', checkState: false),
    GridModel(title: 'M', checkState: false),
    GridModel(title: 'N', checkState: false),
    GridModel(title: 'O', checkState: false),
    GridModel(title: 'P', checkState: false),
    GridModel(title: 'Q', checkState: false),
    GridModel(title: 'R', checkState: false),
    GridModel(title: 'S', checkState: false),
    GridModel(title: 'T', checkState: false),
    GridModel(title: 'U', checkState: false),
    GridModel(title: 'V', checkState: false),
    GridModel(title: 'W', checkState: false),
    GridModel(title: 'X', checkState: false),
    GridModel(title: 'Y', checkState: false),
    GridModel(title: 'Z', checkState: false),
  ];
  String selectedButton = 'A';
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    children: [
                      Text(
                        'Immigration Glossary',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30),
                      Image.asset('assets/images/groupphoto.png'),
                      SizedBox(height: 30),
                      Text(
                          'Canadian immigration legal fees can be intimidating. Our products prepared by lawyers and other immigration professionals provide an alternative path.'),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Search Word',
                            style: TextStyle(
                                color: Color(0xff0077B5),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ReviewPage();
                          }));
                        },
                        child: Container(
                          height: 50,
                          width: width * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xff00A0DC),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Search',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 100,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                alphabets[index].checkState = true;
                                selectedButton = alphabets[index].title;
                                for (int i = 0; i < alphabets.length; i++) {
                                  if (i != index) {
                                    alphabets[i].checkState = false;
                                  }
                                }
                              });
                            },
                            child: GridviewButton(
                              title: alphabets[index].title,
                              check: alphabets[index].checkState,
                            ),
                          );
                        },
                        itemCount: alphabets.length,
                      ),
                      SizedBox(height: 40),
                      Text(
                        selectedButton,
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 40),
                      GlossaryData(),
                      GlossaryData(),
                      GlossaryData(),
                      GlossaryData(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/iconPng/warningCircle.png'),
                          Text(
                            'If you want to backlink any word in the \nglossary to your website, contact us. ',
                            style: TextStyle(
                                color: Color(0xff0077B5),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                BottomMenu(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GridviewButton extends StatelessWidget {
  final bool check;
  final String title;
  const GridviewButton({
    Key? key,
    required this.title,
    required this.check,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: check
            ? LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0xff0077B5),
                  Color(0xff00A0DC),
                ],
              )
            : LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0xffF3F3F3),
                  Color(0xffF3F3F3),
                ],
              ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        title,
        style:
            TextStyle(fontSize: 20, color: check ? Colors.white : Colors.black),
      ),
    );
  }
}
