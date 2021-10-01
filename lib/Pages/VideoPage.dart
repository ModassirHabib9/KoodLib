import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/page_number.dart';
import 'package:flutter_enter/Pages/Components/video_page_container.dart';

import 'Components/bottom_menu.dart';
import 'Components/join_container.dart';
import 'Components/list_buttons.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({
    Key? key,
    required this.isPortrait,
    required this.height,
    required this.width,
    required this.check,
  }) : super(key: key);

  final bool isPortrait;
  final double height;
  final double width;
  final bool check;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  VideoContainer(),
                  VideoContainer(),
                  VideoContainer(),
                  VideoContainer(),
                  VideoContainer(),
                ],
              ),
              SizedBox(height: 10),
              PageNumbers(),
              SizedBox(height: 20),
              check
                  ? JoinContainer(
                      isPortrait: isPortrait, height: height, width: width)
                  : SizedBox(),
            ],
          ),
        ),
        SizedBox(height: 20),
        check ? BottomMenu() : SizedBox(),
      ],
    );
  }
}
