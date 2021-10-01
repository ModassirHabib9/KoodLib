import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/constants/constants1.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class MessageOpen extends StatefulWidget {
  @override
  _MessageOpenState createState() => _MessageOpenState();
}

class _MessageOpenState extends State<MessageOpen> {
  final messageTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    // double deviceWidth(BuildContext context) =>
    //     MediaQuery.of(context).size.width;
    // double size = MediaQuery.of(context).size as double;
    var isNotPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Icon(
                                Icons.chevron_left_sharp,
                                size: 40.0,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                // width: double.infinity,
                                width: width * 0.85,
                                // height: 40.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(45.0),
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0, vertical: 5.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 40,
                                        child: Stack(
                                          // clipBehavior: Clip.none,
                                          // fit: StackFit.expand,
                                          children: [
                                            CircleAvatar(
                                              // radius: 20.0,
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  child: Image.asset(
                                                      'assets/images/testimage.jpg')),
                                            ),
                                            Positioned(
                                              bottom: 25,
                                              right: -0,
                                              child: SvgPicture.asset(
                                                  'assets/iconsvg/greenicon.svg'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: isNotPortrait
                                                ? width * 0.2
                                                : width * 0.3),
                                        child: Container(
                                          child: Text(
                                            'User name',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  'His local time 8:10 AM',
                                  style: TextStyle(
                                    color: Color(0xffA1A1A1),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Expanded(
                        child: new ListView.builder(
                            reverse: true,
                            itemCount: 2,
                            itemBuilder: (BuildContext ctxt, int index) {
                              return new messagebubble(width: width);
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // height: height * 0.08,
                decoration: kMessageContainerDecoration,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        print(width * 0.2);
                        // messageTextController.clear();
                        // _firestor.collection('messages').add({
                        //   'text': messageText,
                        //   'sender': loggedInUser.email,
                        // });
                      },
                      child: SvgPicture.asset(
                        'assets/iconsvg/attachicon.svg',
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: messageTextController,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        onChanged: (value) {
                          // messageText = value;
                        },
                        decoration: kMessageTextFieldDecoration,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        messageTextController.clear();
                        // _firestor.collection('messages').add({
                        //   'text': messageText,
                        //   'sender': loggedInUser.email,
                        // });
                      },
                      child: SvgPicture.asset(
                        'assets/iconsvg/sendbutton.svg',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class messagebubble2 extends StatelessWidget {
  const messagebubble2({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: width * 0.8,
                child: Bubble(
                  margin: BubbleEdges.only(top: 10),
                  stick: true,
                  nip: BubbleNip.rightBottom,
                  color: HexColor('#FFFFFF'),
                  child: Text(
                      'Hello, World!ksjdkfsjdlkfjsldkfjlskdjfldjfglkdfjgkldjlkfjskld sldfjsldkfj sdlfkjsdf sdlfjsdf sdl sdlkfjsd sdlkfjsdf sdlfkjsdfljsdlfjs lskdjflksdj fsl sdlfjsldkfj',
                      textAlign: TextAlign.right),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              width: width * 0.8,
              child: Text('11:54 PM'),
            ),
          ),
        ],
      ),
    );
  }
}

class messagebubble extends StatelessWidget {
  const messagebubble({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 20.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(45.0),
                      child: Image.asset('assets/images/testimage.jpg')),
                ),
                Container(
                  width: width * 0.8,
                  child: Bubble(
                    margin: BubbleEdges.only(top: 10),
                    stick: true,
                    nip: BubbleNip.leftBottom,
                    color: HexColor('#EBF4F9'),
                    child: Text(
                        'Hello, World!ksjdkfsjdlkfjsldkfjlskdjf sdlkfjsd sdlkfjsdf sdlfkjsdfljsdlfjs lskdjflksdj fsl sdlfjsldkfj',
                        textAlign: TextAlign.right),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                width: width * 0.219,
                child: Text('11:54 PM'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
