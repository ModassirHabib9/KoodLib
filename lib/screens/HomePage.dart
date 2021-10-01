//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// // import 'package:flutter_enter/custom_dialog_box.dart';
// // import 'package:flutter_enter/dashboard_menu.dart';
// import 'package:flutter_enter/fahadpages/dashboard_main.dart';
// import 'package:flutter_enter/Pages/HomePageDirectory.dart';
// import 'package:flutter_enter/Pages/JobsForImmigrants.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// // import 'Pages/ImmigrationGlossaryPage.dart';
// // import 'Pages/media_page.dart';
// // import 'Pages/pod_casts_lists_screen.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// var scaffoldKey = GlobalKey<ScaffoldState>();
// final TextEditingController email = TextEditingController();
// final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
// final TextEditingController password = TextEditingController();
//
// class _HomePageState extends State<HomePage> {
//   int _selectedDrawerIndex = 0;
//   _getDrawerItemWidget(int pos) {
//     switch (pos) {
//       case 0:
//         return new HomePageDirectory();
//       case 1:
//         return new Text('Add notary');
//       case 2:
//         return new ImmigrationGlossaryPage();
//       case 3:
//         return new PodCastsListScreen();
//
//       case 4:
//         return new JobsForImmigrants();
//
//       case 5:
//         return new MediaPage(pageKey: 1);
//
//       case 6:
//         return new MediaPage(pageKey: 0);
//
//       default:
//         return new Text("Error");
//     }
//   }
//
//   _onSelectItem(int index) {
//     setState(() => _selectedDrawerIndex = index);
//     Navigator.of(context).pop(); // close the drawer
//   }
//
//   bool _isExpanded = false;
//   @override
//   Widget build(BuildContext context) {
//     var isNotPortrait =
//         MediaQuery.of(context).orientation == Orientation.portrait;
//     var width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFFFFFFFF),
//         leading: Builder(
//           builder: (context) => FlatButton(
//             onPressed: () => Scaffold.of(context).openDrawer(),
//             child: SvgPicture.asset(
//               'assets/iconsvg/SquaresFour.svg',
//               height: 25,
//               color: Colors.black,
//               width: 25,
//             ),
//             // onPressed: () => Scaffold.of(context).openDrawer(),
//           ),
//         ),
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Center(
//               child: new Text(
//                 "Koolib.",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Color(0xFF0077B5), fontSize: 24),
//               ),
//             ),
//
//             // Container(
//             //     padding: const EdgeInsets.all(8.0),
//             //     child: Text('Solid Shop')),
//           ],
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: InkWell(
//               onTap: () {
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return CustomDialogBox(
//                       title: "Name Surname",
//                       descriptions: "User type",
//                       text: "Log Out",
//                     );
//                   },
//                 );
//               },
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 25.0),
//                 child: CircleAvatar(
//                   backgroundColor: Colors.white,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(50),
//                     child: Image.asset("assets/mud.jpg"),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: _getDrawerItemWidget(_selectedDrawerIndex),
//       drawer: Container(
//         width: isNotPortrait ? width * 0.7 : width * 0.4,
//         child: ClipRRect(
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
//           child: Drawer(
//             key: scaffoldKey,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
//               child: SingleChildScrollView(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Column(
//                       children: [
//                         DrawerHeader(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(10.0),
//                                 child: Text(
//                                   "koolib logo",
//                                   style: TextStyle(
//                                       fontSize: 24.0, color: Color(0xFF0077B5)),
//                                 ),
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) =>
//                                               DashboardMain()));
//                                 },
//                                 child: Row(
//                                   children: [
//                                     SvgPicture.asset(
//                                       'assets/iconsvg/dash.svg',
//                                       height: 20,
//                                       width: 20,
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Text(
//                                         " Dashboard",
//                                         style: TextStyle(
//                                             color: Color(0xFF050505),
//                                             fontSize: 16,
//                                             fontWeight: FontWeight.w600),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Row(
//                             children: [
//                               SvgPicture.asset(
//                                 'assets/iconsvg/Services.svg',
//                                 height: 20,
//                                 width: 20,
//                               ),
//                               Text(
//                                 "   Services",
//                                 style: TextStyle(
//                                     color: Color(0xFF050505),
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         InkWell(
//                           onTap: () {
//                             _onSelectItem(0);
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 45.0, top: 20),
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: <Widget>[
//                                 SvgPicture.asset(
//                                   'assets/iconsvg/directory.svg',
//                                   height: 17,
//                                   width: 17,
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.only(left: 8.0),
//                                   child: Text(
//                                     "Directory",
//                                     style: TextStyle(
//                                         fontSize: 13.5,
//                                         fontWeight: FontWeight.w600),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         InkWell(
//                           onTap: () {
//                             _onSelectItem(1);
//                           },
//                           child: Container(
//                             padding: const EdgeInsets.only(left: 45.0, top: 20),
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: <Widget>[
//                                 SvgPicture.asset(
//                                   'assets/iconsvg/notary.svg',
//                                   height: 17,
//                                   width: 17,
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.only(left: 8.0),
//                                   child: Text(
//                                     "Notary",
//                                     style: TextStyle(
//                                         fontSize: 13.5,
//                                         fontWeight: FontWeight.w600),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         InkWell(
//                           onTap: () {
//                             _onSelectItem(2);
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 45.0, top: 20),
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: <Widget>[
//                                 SvgPicture.asset(
//                                   'assets/iconsvg/glossary.svg',
//                                   height: 17,
//                                   width: 17,
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.only(left: 8.0),
//                                   child: Text(
//                                     "Glossary",
//                                     style: TextStyle(
//                                         fontSize: 13.5,
//                                         fontWeight: FontWeight.w600),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         InkWell(
//                           onTap: () {
//                             _onSelectItem(3);
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 45.0, top: 20),
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: <Widget>[
//                                 SvgPicture.asset(
//                                   'assets/iconsvg/podcast.svg',
//                                   height: 17,
//                                   width: 17,
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.only(left: 8.0),
//                                   child: Text(
//                                     "Podcast",
//                                     style: TextStyle(
//                                         fontSize: 13.5,
//                                         fontWeight: FontWeight.w600),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         InkWell(
//                           onTap: () {
//                             _onSelectItem(4);
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 45.0, top: 20),
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: <Widget>[
//                                 SvgPicture.asset(
//                                   'assets/iconsvg/postjob.svg',
//                                   height: 17,
//                                   width: 17,
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.only(left: 8.0),
//                                   child: Text(
//                                     "Post Jobs",
//                                     style: TextStyle(
//                                         fontSize: 13.5,
//                                         fontWeight: FontWeight.w600),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         InkWell(
//                           onTap: () {
//                             _onSelectItem(5);
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 45.0, top: 20),
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: <Widget>[
//                                 SvgPicture.asset(
//                                   'assets/iconsvg/blogs.svg',
//                                   height: 17,
//                                   width: 17,
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.only(left: 8.0),
//                                   child: Text(
//                                     "Blogs",
//                                     style: TextStyle(
//                                         fontSize: 13.5,
//                                         fontWeight: FontWeight.w600),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         InkWell(
//                           onTap: () {
//                             _onSelectItem(6);
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 45.0, top: 20),
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: <Widget>[
//                                 SvgPicture.asset(
//                                   'assets/iconsvg/videos.svg',
//                                   height: 17,
//                                   width: 17,
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.only(left: 8.0),
//                                   child: Text(
//                                     "Videos",
//                                     style: TextStyle(
//                                         fontSize: 13.5,
//                                         fontWeight: FontWeight.w600),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: MediaQuery.of(context).size.height * 0.06),
//                     Container(
//                       height: 40,
//                       width: MediaQuery.of(context).size.width * 0.63,
//                       color: Colors.transparent,
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             border:
//                                 Border.all(color: Color(0xFF00A0DC), width: 2),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(5.0))),
//                         child: new Center(
//                           child: new Text(
//                             "Become a Partner",
//                             style: TextStyle(
//                                 color: Color(0xFF00A0DC), fontSize: 22),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.065),
//                     Column(
//                       children: [
//                         Container(
//                           height: 50,
//                           width: double.infinity,
//                           child: TextField(
//                             controller: email,
//                             autocorrect: true,
//                             decoration: InputDecoration(
//                               hintText: 'Search',
//                               suffixIcon: Icon(Icons.search),
//                               hintStyle: TextStyle(color: Color(0xFFAAABB0)),
//                               filled: true,
//                               fillColor: Colors.white70,
//                               border: OutlineInputBorder(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(5.0)),
//                                 borderSide: BorderSide(
//                                     color: Color(0xFFCFCCCC), width: 2),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 10),
//                         Row(
//                           children: [
//                             Expanded(
//                               child: Image.asset(
//                                 'assets/images/google.jpg',
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Expanded(
//                               child: Image.asset(
//                                 'assets/images/apple.jpg',
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// =======
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_enter/fahadpages/user_dashboard_main.dart';
import 'package:flutter_enter/screens/custom_dialog_box.dart';
import 'package:flutter_enter/screens/dashboard_menu.dart';
import 'package:flutter_enter/fahadpages/dashboard_main.dart';
import 'package:flutter_enter/Pages/HomePageDirectory.dart';
import 'package:flutter_enter/Pages/JobsForImmigrants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Pages/ImmigrationGlossaryPage.dart';
import '../Pages/media_page.dart';
import '../Pages/pod_casts_lists_screen.dart';

GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

class HomePage extends StatefulWidget {
  bool byDefaultClose;
  HomePage(this.byDefaultClose);

  @override
  _HomePageState createState() => _HomePageState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();
final TextEditingController email = TextEditingController();
final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
final TextEditingController password = TextEditingController();

class _HomePageState extends State<HomePage> {
  List<int> pageList = [0];
  void addToPageList(int i) {
    if (pageList[pageList.length - 1] == i) {
      //dont add to list
    } else {
      pageList.add(i);
    }
  }

  int _selectedDrawerIndex = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 12:
        return new DashboardMain();
      case 0:
        return new HomePageDirectory();
      case 1:
        return new Text('Add notary');
      case 2:
        return new ImmigrationGlossaryPage();
      case 3:
        return new PodCastsListScreen();

      case 4:
        return new JobsForImmigrants();

      case 5:
        return new MediaPage(pageKey: 1);

      case 6:
        return new MediaPage(pageKey: 0);

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  void initState() {
    super.initState();
    if (widget.byDefaultClose == true) {
      openDrawer();
    }
  }

  openDrawer() async {
    await Future.delayed(Duration.zero);
    _scaffoldKey.currentState!.openDrawer();
  }

  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    var isNotPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    var width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async {
        if (pageList[pageList.length - 1] == 0) {
          // Navigator.pushNamed(context, '/Navigation Screen');
          // exit(0);
          // Future.delayed(const Duration(milliseconds: 1000), () {
          //   SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          // });
          Navigator.of(context).pop();
          return true;
        } else {
          pageList.removeLast();
          setState(() => _selectedDrawerIndex = pageList[pageList.length - 1]);
          return false;
        }
      },
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          leading: Builder(
            builder: (context) => FlatButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              child: SvgPicture.asset(
                'assets/iconsvg/SquaresFour.svg',
                height: 25,
                color: Colors.black,
                width: 25,
              ),
              // onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: new Text(
                  "Koolib.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF0077B5), fontSize: 24),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDialogBox(
                        title: "Name Surname",
                        descriptions: "User type",
                        text: "Log Out",
                      );
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset("assets/mud.jpg"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: _getDrawerItemWidget(_selectedDrawerIndex),
        drawer: Container(
          width: isNotPortrait ? width * 0.7 : width * 0.4,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15)),
            child: Drawer(
              key: scaffoldKey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          DrawerHeader(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "koolib logo",
                                    style: TextStyle(
                                        fontSize: 24.0,
                                        color: Color(0xFF0077B5)),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DashboardMain()));
                                  },
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/iconsvg/dash.svg',
                                        height: 20,
                                        width: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          " Dashboard",
                                          style: TextStyle(
                                              color: Color(0xFF050505),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/iconsvg/Services.svg',
                                  height: 20,
                                  width: 20,
                                ),
                                Text(
                                  "   Services",
                                  style: TextStyle(
                                      color: Color(0xFF050505),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              _onSelectItem(0);
                              addToPageList(0);
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 45.0, top: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset(
                                    'assets/iconsvg/directory.svg',
                                    height: 17,
                                    width: 17,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Directory",
                                      style: TextStyle(
                                          fontSize: 13.5,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // _onSelectItem(1);
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          UserDashboardMain()));
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.only(left: 45.0, top: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset(
                                    'assets/iconsvg/notary.svg',
                                    height: 17,
                                    width: 17,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Notary",
                                      style: TextStyle(
                                          fontSize: 13.5,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _onSelectItem(2);
                              addToPageList(2);
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 45.0, top: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset(
                                    'assets/iconsvg/glossary.svg',
                                    height: 17,
                                    width: 17,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Glossary",
                                      style: TextStyle(
                                          fontSize: 13.5,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _onSelectItem(3);
                              addToPageList(3);
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 45.0, top: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset(
                                    'assets/iconsvg/podcast.svg',
                                    height: 17,
                                    width: 17,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Podcast",
                                      style: TextStyle(
                                          fontSize: 13.5,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _onSelectItem(4);
                              addToPageList(4);
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 45.0, top: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset(
                                    'assets/iconsvg/postjob.svg',
                                    height: 17,
                                    width: 17,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Post Jobs",
                                      style: TextStyle(
                                          fontSize: 13.5,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _onSelectItem(5);
                              addToPageList(5);
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 45.0, top: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset(
                                    'assets/iconsvg/blogs.svg',
                                    height: 17,
                                    width: 17,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Blogs",
                                      style: TextStyle(
                                          fontSize: 13.5,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _onSelectItem(6);
                              addToPageList(6);
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 45.0, top: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset(
                                    'assets/iconsvg/videos.svg',
                                    height: 17,
                                    width: 17,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Videos",
                                      style: TextStyle(
                                          fontSize: 13.5,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.63,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Color(0xFF00A0DC), width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          child: new Center(
                            child: new Text(
                              "Become a Partner",
                              style: TextStyle(
                                  color: Color(0xFF00A0DC), fontSize: 22),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.065),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: double.infinity,
                            child: TextField(
                              controller: email,
                              autocorrect: true,
                              decoration: InputDecoration(
                                hintText: 'Search',
                                suffixIcon: Icon(Icons.search),
                                hintStyle: TextStyle(color: Color(0xFFAAABB0)),
                                filled: true,
                                fillColor: Colors.white70,
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFCFCCCC), width: 2),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  'assets/images/google.jpg',
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Image.asset(
                                  'assets/images/apple.jpg',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
