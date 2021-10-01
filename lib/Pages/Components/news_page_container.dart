import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsPageContainer extends StatelessWidget {
  const NewsPageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
            )
          ],
        ),
        child: Column(
          children: [
            Container(
              child: Image.asset('assets/images/newsImage.png'),
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet...',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff0077B5),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.5),
                backgroundImage: AssetImage('assets/images/wadood.png'),
                radius: 15,
              ),
              title: RichText(
                text: new TextSpan(
                  style: new TextStyle(
                    fontSize: 16.5,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    new TextSpan(text: 'Posted by'),
                    new TextSpan(
                        text: ' Abdul Wadood ',
                        style: new TextStyle(
                            color: Color(0xff0077B5),
                            fontWeight: FontWeight.bold)),
                    new TextSpan(text: 'on '),
                    new TextSpan(
                        text: 'May 05, 2021',
                        style: new TextStyle(
                            color: Color(0xff0077B5),
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam tortor eu feugiat in risus. Viverra porta interdum quis et elementum at. Dui hendrerit sapien, sodales quam ornare est. Magna consectetur nec maecenas ullamcorper risus quisque lorem dui eu. Vitae ac quam porttitor nunc ut.',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Reading time: ',
                  style: TextStyle(color: Color(0xff0077B5), fontSize: 17),
                ),
                Text(
                  '3 min',
                  style: TextStyle(
                      color: Color(0xff0077B5),
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                )
              ],
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: width * 0.54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 3, color: Color(0xff00A0DC)),
              ),
              child: Text(
                'Read',
                style: TextStyle(
                    color: Color(0xff00A0DC),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/iconPng/in.png'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/iconPng/google.png'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/iconPng/twitter.png'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/iconPng/facebook.png'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
