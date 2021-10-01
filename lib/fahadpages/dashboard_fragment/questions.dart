import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/page_number.dart';
import 'package:flutter_enter/fahadpages/components/question_user.dart';
import 'package:flutter_enter/fahadpages/components/search_widget.dart';
import 'package:flutter_enter/fahadpages/components/show_entries.dart';
import 'package:flutter_enter/fahadpages/components/show_entries_2.dart';
import 'package:number_paginator/number_paginator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:radio_grouped_buttons/custom_buttons/custom_radio_buttons_group.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter_radio_group/flutter_radio_group.dart';

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var _listHorizontal = ["unanswered questions", "all questions"];
  var _keyHorizontal = GlobalKey<FlutterRadioGroupState>();

  var _indexHorizontal = 0;
  int _stackIndex = 0;
  List<String> buttonList = ["Sunday", "Monday"];

  int _numPages = 10;
  int _currentPage = 0;

  String _singleValue = "Text alignment right";
  String _verticalGroupValue = "Pending";

  List<String> _status = ["unanswered questions", "all questions"];
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Questions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  LinearPercentIndicator(
                    // width: width * 1,
                    lineHeight: 20.0,
                    percent: 0.5,
                    center: Text(
                      "124",
                      style: new TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    backgroundColor: Colors.grey.withOpacity(0.5),
                    progressColor: Colors.blue,
                  ),
                  FlutterRadioGroup(
                      activeColor: Colors.blue,
                      key: _keyHorizontal,
                      titles: _listHorizontal,
                      labelStyle: TextStyle(color: Colors.blue),
                      defaultSelected: _indexHorizontal,
                      orientation: RGOrientation.HORIZONTAL,
                      titleStyle: TextStyle(fontSize: width * 0.041),
                      onChanged: (index) {
                        setState(() {
                          _indexHorizontal = index!;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        SearchWidget(
                          width: width,
                          width2: 0.15,
                        ),
                        ShowEntries2(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    child: ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return QuestionUser();
                      },
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
          ),
        ),
      ),
    );
  }
}
