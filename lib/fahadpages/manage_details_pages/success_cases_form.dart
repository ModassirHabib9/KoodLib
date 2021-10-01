import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/components/description_textfield.dart';
import 'package:flutter_enter/fahadpages/components/submit_for_review_button.dart';
import 'package:flutter_enter/fahadpages/components/text_field_widget.dart';
import 'package:flutter_enter/fahadpages/components/textfield_with_astrick.dart';

class SuccessCasesForm extends StatefulWidget {
  @override
  _SuccessCasesFormState createState() => _SuccessCasesFormState();
}

class _SuccessCasesFormState extends State<SuccessCasesForm> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 25.0, horizontal: 30.0),
            child: Column(
              children: [
                textFieldWithAstrik(
                    textController: textController,
                    title: 'Success Cases title',
                    hint: 'lorem ipsum'),
                SizedBox(
                  height: 20.0,
                ),
                DescriptionTextField(
                  title: 'Description',
                  hint: 'Enter description',
                  words: 700,
                  maxlines: 25,
                ),
                SizedBox(
                  height: 20.0,
                ),
                SubmitForReviewButton(
                  width: width,
                  onTapFunction: () {},
                  height: height,
                  roundness: 8.0,
                  title: 'Add Success Cases',
                  bgcolor: Colors.lightBlueAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
