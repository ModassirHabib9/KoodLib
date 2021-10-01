import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/components/submit_for_review_button.dart';
import 'package:hexcolor/hexcolor.dart';

class MangeDetailsBlogNewsBox extends StatelessWidget {
  const MangeDetailsBlogNewsBox({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.1),
          borderRadius: BorderRadius.circular(12.0),
          color: HexColor('#FFFFFF'),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: height * 0.36,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/blogImage.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Lorem ipsum dolor sit amet...',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam tortor eu feugiat in risus. Viverra porta interdum quis et elementum at fahad afridi vivera poert airt lajt jgjt hi this is koolib for you hope you are enjoying it',
                style: TextStyle(
                  height: 1.3,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Reading time: ',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                  Text(
                    '3 min',
                    style: TextStyle(
                        color: Colors.lightBlue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              SubmitForReviewButton(
                  width: width,
                  onTapFunction: () {},
                  height: height,
                  roundness: 27.0,
                  title: 'Read blog'),
              Divider(
                thickness: 1.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              SubmitForReviewButton(
                  width: width,
                  onTapFunction: () {},
                  height: height,
                  roundness: 12.0,
                  title: 'Show on store page'),
            ],
          ),
        ),
      ),
    );
  }
}
