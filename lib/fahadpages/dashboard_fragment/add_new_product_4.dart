import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AddNewProduct4 extends StatefulWidget {
  @override
  _AddNewProduct4State createState() => _AddNewProduct4State();
}

class _AddNewProduct4State extends State<AddNewProduct4> {
  late YoutubePlayerController _controller;
  late TextEditingController _idController;
  late TextEditingController _seekToController;

  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;

  final List<String> _ids = [
    'nPt8bK2gbaU',
    'gQDByCdjUXw',
    'iLnmTe5Q2Qw',
    '_WoCV4c6XOE',
    'KmzdUe0RSJo',
    '6jZDSSZZxjQ',
    'p2lYr3vM_1w',
    '7QUtEmBT_-w',
    '34_PXCzGw1M',
  ];
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: _ids.first,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
    _idController = TextEditingController();
    _seekToController = TextEditingController();
    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    _idController.dispose();
    _seekToController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var isNotPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: HexColor('#F0FFF0'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: [
                  Text(
                    'Thank you!',
                    style: TextStyle(
                        color: Color(0xff0077B5),
                        fontWeight: FontWeight.bold,
                        fontSize: 26.0),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text('You are just one click away'),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: HexColor('#FFFFFF'),
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Colors.blueGrey.shade100,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: Column(
                          children: [
                            Container(
                              height: 200.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xff0077B5),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Product banner',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            ThankYouTitleDesc(
                                width: width,
                                title: 'Product title',
                                desc: 'Product title'),
                            SizedBox(
                              height: 15.0,
                            ),
                            ThankYouTitleDesc(
                                width: width,
                                title: 'Short description',
                                desc:
                                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using , making it look like readable English.'),
                            SizedBox(
                              height: 15.0,
                            ),
                            ThankYouTitleDesc(
                                width: width,
                                title: 'Description',
                                desc:
                                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using , making it look like readable English.'),
                            SizedBox(
                              height: 15.0,
                            ),
                            ThankYouTitleDesc(
                              width: width,
                              title: 'Category',
                              desc: 'Name Category',
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            ThankYouTitleDesc(
                              width: width,
                              title: 'Language made in',
                              desc: 'Language',
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            ThankYouTitleDesc(
                              width: width,
                              title: 'Product price',
                              desc: '\$150',
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            ThankYouTitleDesc(
                              width: width,
                              title: 'Discounted price',
                              desc: '\$100',
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            ThankYouTitleDesc(
                              width: width,
                              title: 'Product overview URL',
                              desc: 'youtube.com/loremipsum.koolib',
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  width: width * 0.5,
                                  height: isNotPortrait
                                      ? height * 0.16
                                      : height * 0.26,
                                  child: YoutubePlayerBuilder(
                                    player: YoutubePlayer(
                                      width: width * 0.5,
                                      controller: _controller,
                                      showVideoProgressIndicator: true,
                                      progressIndicatorColor: Colors.blueAccent,
                                      topActions: <Widget>[
                                        const SizedBox(width: 8.0),
                                        Expanded(
                                          child: Text(
                                            _controller.metadata.title,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                        ),
                                        IconButton(
                                          icon: const Icon(
                                            Icons.settings,
                                            color: Colors.white,
                                            size: 25.0,
                                          ),
                                          onPressed: () {
                                            log('Settings Tapped!');
                                          },
                                        ),
                                      ],
                                      onReady: () {
                                        _isPlayerReady = true;
                                      },
                                      onEnded: (data) {
                                        _controller.load(_ids[
                                            (_ids.indexOf(data.videoId) + 1) %
                                                _ids.length]);
                                        // _showSnackBar('Next Video Started!');
                                      },
                                    ),
                                    builder: (context, player) => Scaffold(
                                        // appBar: AppBar(
                                        //   leading: Padding(
                                        //     padding: const EdgeInsets.only(
                                        //         left: 12.0),
                                        //     child: Image.asset(
                                        //       'assets/images/user.jpeg',
                                        //       fit: BoxFit.fitWidth,
                                        //     ),
                                        //   ),
                                        //   title: const Text(
                                        //     'Youtube Player Flutter',
                                        //     style: TextStyle(
                                        //         color: Colors.white),
                                        //   ),
                                        // actions: [
                                        //   IconButton(
                                        //     icon: const Icon(
                                        //         Icons.video_library),
                                        //     onPressed: () =>
                                        //         Navigator.push(
                                        //       context,
                                        //       CupertinoPageRoute(
                                        //         builder: (context) =>
                                        //             VideoList(),
                                        //       ),
                                        //     ),
                                        //   ),
                                        // ],
                                        // ),
                                        ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                    ),
                    child: Container(
                      width: width * 0.6,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27.0),
                        border: Border.all(
                          color: Colors.lightBlueAccent,
                          width: 2.0,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Submit for review',
                        style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16.0,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        behavior: SnackBarBehavior.floating,
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }
}

class ThankYouTitleDesc extends StatelessWidget {
  ThankYouTitleDesc({
    required this.width,
    required this.title,
    required this.desc,
  });

  final double width;
  String title, desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: width * 0.4,
            child: Text(
              '$title',
              style: TextStyle(color: HexColor('#0077B5')),
            ),
          ),
          Container(
            width: width * 0.4,
            child: Text('$desc'),
          ),
        ],
      ),
    );
  }
}
