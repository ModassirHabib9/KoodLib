import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/components/question_user.dart';
import 'package:flutter_enter/fahadpages/components/search_widget.dart';
import 'package:flutter_enter/fahadpages/components/show_entries_2.dart';
import 'package:number_paginator/number_paginator.dart';

class UserQuestions extends StatefulWidget {
  @override
  _UserQuestionsState createState() => _UserQuestionsState();
}

class _UserQuestionsState extends State<UserQuestions> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Column(
              children: [
                Text(
                  'Questions',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                SearchWidget(
                  width: width,
                  width2: 0.15,
                ),
                ShowEntries2(),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
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
                    numberPages: 10,
                    onPageChange: (int index) {
                      setState(() {
                        // _currentPage = index;
                      });
                    },
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
