import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/tab_bar_components.dart';
import 'BlogsPage.dart';
import 'NewsPage.dart';
import 'VideoPage.dart';

class MediaPage extends StatefulWidget {
  final int pageKey;
  const MediaPage({Key? key, required this.pageKey}) : super(key: key);

  @override
  _MediaPageState createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> with TickerProviderStateMixin {
  int? initialPage;
  @override
  void initState() {
    super.initState();
    initialPage = this.widget.pageKey;
  }

  @override
  Widget build(BuildContext context) {
    var isNotPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      initialIndex: this.widget.pageKey,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    children: [
                      Text(
                        'Media Page',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 40),
                      Container(
                        child: Image.asset('assets/images/frame.png'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Canadian immigration legal fees can be intimidating. Our products prepared by lawyers and other immigration professionals provide an alternative path.',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30),
                      TabBarComponents(
                          onTap: (index) {
                            setState(() {
                              initialPage = index;
                            });
                          },
                          tab1Title: 'Video',
                          tab2Title: 'Blogs',
                          tab3Title: 'News'),
                    ],
                  ),
                ),
                Builder(builder: (_) {
                  if (initialPage == 0) {
                    return VideoPage(
                        check: true,
                        isPortrait: isNotPortrait,
                        height: height,
                        width: width); //1st custom tabBarView
                  } else if (initialPage == 1) {
                    return BlogsPage(
                      check: true,
                    ); //2nd tabView
                  } else {
                    return NewsPage(check: true); //3rd tabView
                  }
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
