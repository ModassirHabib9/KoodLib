import 'package:flutter/cupertino.dart';
import 'package:flutter_enter/Pages/Components/join_container.dart';
import 'package:flutter_enter/Pages/Components/news_page_container.dart';
import 'package:flutter_enter/Pages/Components/page_number.dart';
import 'package:flutter_enter/Pages/Components/video_page_container.dart';
import 'package:flutter_enter/Pages/Components/bottom_menu.dart';

class NewsPage extends StatelessWidget {
  final bool check;
  const NewsPage({
    Key? key,
    required this.check,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  NewsPageContainer(),
                  NewsPageContainer(),
                ],
              ),
              SizedBox(height: 10),
              PageNumbers(),
              SizedBox(height: 20),
              check
                  ? JoinContainer(
                      isPortrait: isPortrait, height: height, width: width)
                  : SizedBox(
                      height: 20,
                    ),
            ],
          ),
        ),
        check ? BottomMenu() : SizedBox(),
      ],
    );
  }
}
