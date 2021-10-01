import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/components/submit_for_review_button.dart';
import 'package:flutter_enter/fahadpages/manage_details_pages/success_cases_form.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessCases extends StatefulWidget {
  @override
  _SuccessCasesState createState() => _SuccessCasesState();
}

class _SuccessCasesState extends State<SuccessCases> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SuccessCasesBox(),
        SuccessCasesBox(),
        SubmitForReviewButton(
          width: width,
          onTapFunction: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SuccessCasesForm()));
          },
          height: height,
          roundness: 6.0,
          title: 'Add Success Cases',
        )
      ],
    );
  }
}

class SuccessCasesBox extends StatelessWidget {
  const SuccessCasesBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(color: Colors.grey),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Lorem ipsum',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                trailing: SvgPicture.asset('assets/iconsvg/menu.svg'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Text(
                  'Lorem ipusum Lorem ipsum lorem ispsum Lorem ipusum Lorem ipsum Shah Fahad afridi is a good boy \n Pakistan has to play orem ispsum Lorem iprem ipsum lorem ispsum Lorem ipusum Lorem ipsum lorem Varius magna sem pellentesque morbi. Quis vulputate sapien feugiat blandit lorem est. Est scelerisque non morbi id sit enim.spsum Lorem ipusum Lorem ipsum lorem ispsum Lorem ipusum Lorem ipsum lorem ispsum Lorem ipusum Lorem ipsum lorem ispsum Lorem ipusum Lorem ipsum lorem ispsum Lorem ipusum Lorem ipsum lorem ispsum Lorem ipusum Lorem ipsum lorem ispsum ',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
