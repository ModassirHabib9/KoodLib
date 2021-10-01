import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionContainer extends StatelessWidget {
  final Color color;
  final Color questionColor;
  const QuestionContainer({
    required this.color,
    required this.questionColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 30),
          RichText(
            text: new TextSpan(
              style: new TextStyle(
                fontSize: 16.5,
                color: Colors.black,
              ),
              children: <TextSpan>[
                new TextSpan(text: '1 Answer   |   Asled in '),
                new TextSpan(
                    text: 'Child Custody, Divorce ',
                    style: new TextStyle(
                        color: Color(0xff0077B5), fontWeight: FontWeight.bold)),
                new TextSpan(text: 'and '),
                new TextSpan(
                    text: 'Family Law ',
                    style: new TextStyle(
                        color: Color(0xff0077B5), fontWeight: FontWeight.bold)),
                new TextSpan(text: 'for '),
                new TextSpan(
                    text: 'Colorado',
                    style: new TextStyle(
                        color: Color(0xff0077B5), fontWeight: FontWeight.bold)),
                new TextSpan(text: ' on May 17, 2021'),
              ],
            ),
          ),
          SizedBox(height: 50),
          RichText(
            text: new TextSpan(
                style: new TextStyle(
                  fontSize: 19.5,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'Q: ',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elit gravida donec adipiscing sed pellentesque pulvinar.',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff0077B5)),
                  ),
                ]),
          ),
          SizedBox(height: 30),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt habitant proin quam a netus. Ullamcorper integer mauris diam quam. Maecenas enim, viverra libero mi eget.',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey.withOpacity(0.4),
              backgroundImage: AssetImage('assets/images/wadood.png'),
            ),
            title: Text(
              'Abdul Wadood',
              style: TextStyle(
                  color: Color(0xff0077B5),
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'answered on May 17, 2021',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: questionColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt habitant proin quam a netus. Ullamcorper integer mauris diam quam. Maecenas enim, viverra libero mi eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt habitant proin quam a netus. Ullamcorper integer mauris diam quam. Maecenas enim, viverra libero mi eget.'),
          )
        ],
      ),
    );
  }
}
