import 'package:flutter/cupertino.dart';
import 'package:flutter_enter/Pages/Components/blogs_page_container.dart';
import 'package:flutter_enter/Pages/Components/join_container.dart';
import 'package:flutter_enter/Pages/Components/page_number.dart';
import 'package:flutter_enter/Pages/Components/bottom_menu.dart';

class BlogsPage extends StatelessWidget {
  final bool check;
  const BlogsPage({
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
                  BlogPageContainer(),
                  BlogPageContainer(),
                  BlogPageContainer(),
                ],
              ),
              SizedBox(height: 10),
              PageNumbers(),
              SizedBox(height: 20),
              check
                  ? JoinContainer(
                      isPortrait: isPortrait, height: height, width: width)
                  : SizedBox(),
              SizedBox(height: 30),
            ],
          ),
        ),
        check ? BottomMenu() : SizedBox(),
      ],
    );
  }
}
