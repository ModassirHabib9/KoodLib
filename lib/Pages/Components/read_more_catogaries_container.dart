import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReadMoreCatogariesContainer extends StatelessWidget {
  final String title;
  final String text;
  final String image;
  const ReadMoreCatogariesContainer({
    Key? key,
    required this.title,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        decoration: BoxDecoration(
            color: Color(0xffDBDBDB),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.grey.withOpacity(0.3),
            )),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Text(text),
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF00A0DC), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(31.0))),
                    child: Text(
                      "Read more",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF00A0DC),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(image),
          ],
        ),
      ),
    );
  }
}
