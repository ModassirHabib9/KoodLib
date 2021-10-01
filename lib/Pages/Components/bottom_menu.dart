import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 671,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Color(0xFF0077B5), Color(0xFF82CCF1)],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text("Wondering what Koolib\n products can do for you?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/Directory Page');
              },
              child: SizedBox(
                height: 57,
                width: width * 0.84,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: new Center(
                    child: Row(
                      children: [
                        SizedBox(width: 30),
                        SvgPicture.asset(
                          'assets/iconsvg/ShoppingCart.svg',
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(width: 30),
                        new Text(
                          "Directory",
                          style:
                              TextStyle(color: Color(0xFF00A0DC), fontSize: 22),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 57,
              width: width * 0.84,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white, width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: new Center(
                  child: Row(
                    children: [
                      SizedBox(width: 30),
                      SvgPicture.asset(
                        'assets/iconsvg/Briefcase.svg',
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(width: 30),
                      new Text(
                        "Notary",
                        style:
                            TextStyle(color: Color(0xFF00A0DC), fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/Podcast Page');
              },
              child: SizedBox(
                height: 57,
                width: width * 0.84,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: new Center(
                    child: Row(
                      children: [
                        SizedBox(width: 30),
                        SvgPicture.asset(
                          'assets/iconsvg/Microphone.svg',
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(width: 40),
                        new Text(
                          "Podcast",
                          style:
                              TextStyle(color: Color(0xFF00A0DC), fontSize: 22),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/Glossary Page');
              },
              child: SizedBox(
                height: 57,
                width: width * 0.84,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: new Center(
                    child: Row(
                      children: [
                        SizedBox(width: 30),
                        SvgPicture.asset(
                          'assets/iconsvg/Notebook.svg',
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(width: 30),
                        new Text(
                          "Glossary",
                          style:
                              TextStyle(color: Color(0xFF00A0DC), fontSize: 22),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/PostJob Page');
              },
              child: SizedBox(
                height: 57,
                width: width * 0.84,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: new Center(
                    child: Row(
                      children: [
                        SizedBox(width: 30),
                        SvgPicture.asset(
                          'assets/iconsvg/ClipboardText.svg',
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(width: 38),
                        new Text(
                          "Post Jobs",
                          style:
                              TextStyle(color: Color(0xFF00A0DC), fontSize: 22),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/Media Page for Videos');
              },
              child: SizedBox(
                height: 57,
                width: width * 0.84,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: new Center(
                    child: Row(
                      children: [
                        SizedBox(width: 30),
                        SvgPicture.asset(
                          'assets/iconsvg/videos.svg',
                          height: 25,
                          color: Color(0xFF0077B5),
                          width: 25,
                        ),
                        SizedBox(width: 28),
                        new Text(
                          "Videos",
                          style:
                              TextStyle(color: Color(0xFF00A0DC), fontSize: 22),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/Media Page for Blogs');
              },
              child: SizedBox(
                height: 57,
                width: width * 0.84,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: new Center(
                    child: Row(
                      children: [
                        SizedBox(width: 30),
                        SvgPicture.asset(
                          'assets/iconsvg/blogs.svg',
                          height: 25,
                          width: 25,
                          color: Color(0xFF0077B5),
                        ),
                        SizedBox(width: 30),
                        new Text(
                          "Blogs",
                          style:
                              TextStyle(color: Color(0xFF00A0DC), fontSize: 22),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 57,
              width: width * 0.84,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/Directory Sign Up Form');
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: new Center(
                    child: Row(
                      children: [
                        SizedBox(width: 30),
                        SvgPicture.asset(
                          'assets/iconsvg/postjob.svg',
                          height: 25,
                          color: Color(0xFF0077B5),
                          width: 25,
                        ),
                        SizedBox(width: 30),
                        new Text(
                          "Become a Partner!",
                          style:
                              TextStyle(color: Color(0xFF00A0DC), fontSize: 21),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
