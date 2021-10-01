import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JoinContainer extends StatelessWidget {
  const JoinContainer({
    Key? key,
    required this.isPortrait,
    required this.height,
    required this.width,
  }) : super(key: key);

  final bool isPortrait;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
          horizontal: isPortrait ? 20 : width * 0.1, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage('assets/images/videoBG.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Text(
            'Are you a licensed Immigration Professional?',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent',
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Image.asset('assets/images/joinImage.png'),
          Spacer(),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: width * 0.4,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Join!',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
