import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/renew_word.dart';
import 'package:flutter_enter/Pages/reniew_all_page.dart';
import 'package:flutter_enter/fahadpages/dashboard_fragment/appearance_settings.dart';
import 'package:flutter_enter/fahadpages/dashboard_fragment/message_open.dart';
import 'package:flutter_enter/fahadpages/dashboard_fragment/podcasts.dart';
import 'package:flutter_enter/fahadpages/dashboard_fragment/store_management.dart';
import 'package:flutter_enter/fahadpages/manage_details_pages/manage_details_main_page.dart';
import 'package:flutter_enter/fahadpages/manage_details_pages/manage_details_tab0.dart';
import 'package:flutter_enter/screens/HomePage.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/UserAccountSettings.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/UserMessagePage.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/UserNotificationSettings.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/UserSecuritySettingPage.dart';
import 'package:flutter_enter/screens/custom_dialog_box.dart';
import '../main.dart';
import 'dashboard_fragment/payout_report.dart';
import 'dashboard_fragment/sales_report.dart';
import 'dashboard_fragment/questions.dart';
import 'dashboard_fragment/manage_product.dart';
import 'package:flutter_svg/svg.dart';

import 'dashboard_fragment/add_new_product_1.dart';
import 'dashboard_fragment/your_directory_statistics.dart';
import 'dashboard_fragment/your_store_statistic.dart';

int _selectedDrawerIndex = 0;

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

class DashboardMain extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Fragment 1", Icons.rss_feed),
    new DrawerItem("Fragment 2", Icons.local_pizza),
    new DrawerItem("Fragment 3", Icons.info)
  ];
  @override
  _DashboardMainState createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
  int _selectedDrawerIndex = 0;
  bool _isExpanded = true;

  List<int> pageList = [0];

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new YourStoreStatistic();
      case 1:
        return new YourDirectoryStatistics();
      case 2:
        return new ManageProduct();
      case 3:
        return new SalesReport();
      case 4:
        return new PayoutReport();
      case 5:
        return new UserMessagesPage();
      case 6:
        return new StoreManagement();
      case 7:
        return new ManageDetailsTab0();
      case 8:
        return new Questions();
      case 9:
        return new ManageDetailsMainPage('Blogs & News');
      case 10:
        return new Podcasts();
      case 11:
        return new UserAccountSettings();
      case 12:
        return new UserSecurityPage();
      case 13:
        return new UserNotificationSettings();
      case 14:
        return new AppearanceSettings();
      case 15:
        return RenewAllPage();
      case 16:
        return RenewWord();
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  late bool isDrawerBeingShown;

  @override
  void initState() {
    super.initState();
    openDrawer();
  }

  openDrawer() async {
    await Future.delayed(Duration.zero);
    _scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [
      SizedBox(
        height: 20.0,
      ),
      ExpansionTile(
        tilePadding: EdgeInsets.all(0.0),
        initiallyExpanded: true,
        onExpansionChanged: (b) {
          setState(() {
            _isExpanded = !_isExpanded; //using set state just to exemplify
          });
        },
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SvgPicture.asset(
            'assets/iconsvg/dash.svg',
            height: 20,
            width: 20,
          ),
        ),
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(_isExpanded
              ? Icons.keyboard_arrow_up
              : Icons.keyboard_arrow_down),
        ),
        children: <Widget>[
          ExpansionTileChild(
            title: 'Your Store Statistic',
            pic: 'storestatistics.svg',
            onTapFunction: () {
              _onSelectItem(0);
              addToPageList(0);
            },
            id: 0,
          ),
          ExpansionTileChild(
            title: 'Your Directory Statistic',
            pic: 'directoryStatistic.svg',
            onTapFunction: () {
              _onSelectItem(1);
              addToPageList(1);
            },
            id: 1,
          ),
        ],
      ),
      ExpansionTile(
        tilePadding: EdgeInsets.all(0.0),
        initiallyExpanded: true,
        onExpansionChanged: (b) {
          setState(() {
            _isExpanded = !_isExpanded; //using set state just to exemplify
          });
        },
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SvgPicture.asset(
            'assets/iconsvg/yourStore.svg',
            height: 20,
            width: 20,
          ),
        ),
        title: Text(
          "Your Store",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(_isExpanded
              ? Icons.keyboard_arrow_up
              : Icons.keyboard_arrow_down),
        ),
        children: <Widget>[
          ExpansionTileChild(
            title: 'Manage Products',
            pic: 'manageProduct.svg',
            onTapFunction: () {
              _onSelectItem(2);
              addToPageList(2);
            },
            id: 2,
          ),
          ExpansionTileChild(
            title: 'Sales report',
            pic: 'salesperort.svg',
            onTapFunction: () {
              _onSelectItem(3);
              addToPageList(3);
            },
            id: 3,
          ),
          ExpansionTileChild(
            title: 'Payouts',
            pic: 'payouts.svg',
            onTapFunction: () {
              _onSelectItem(4);
              addToPageList(4);
            },
            id: 4,
          ),
          ExpansionTileChild(
            title: 'Message',
            pic: 'messages.svg',
            onTapFunction: () {
              _onSelectItem(5);
              addToPageList(5);
            },
            id: 5,
          ),
          ExpansionTileChild(
            title: 'Store Management',
            pic: 'storeManagement.svg',
            onTapFunction: () {
              _onSelectItem(6);
              addToPageList(6);
            },
            id: 6,
          ),
        ],
      ),
      ExpansionTile(
        tilePadding: EdgeInsets.all(0.0),
        initiallyExpanded: true,
        onExpansionChanged: (b) {
          setState(() {
            _isExpanded = !_isExpanded; //using set state just to exemplify
          });
        },
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SvgPicture.asset(
            'assets/iconsvg/yourDirectory.svg',
            height: 20,
            width: 20,
          ),
        ),
        title: Text(
          "Your Directory",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(_isExpanded
              ? Icons.keyboard_arrow_up
              : Icons.keyboard_arrow_down),
        ),
        children: <Widget>[
          ExpansionTileChild(
            title: 'Manage Details',
            pic: 'manageDetails.svg',
            onTapFunction: () {
              _onSelectItem(7);
              addToPageList(7);
            },
            id: 7,
          ),
          ExpansionTileChild(
            title: 'Questions',
            pic: 'questions.svg',
            onTapFunction: () {
              _onSelectItem(8);
              addToPageList(8);
            },
            id: 8,
          ),
          ExpansionTileChild(
            title: 'News & Blogs',
            pic: 'newsBlogs.svg',
            onTapFunction: () {
              _onSelectItem(9);
              addToPageList(9);
            },
            id: 9,
          ),
          ExpansionTileChild(
            title: 'Podcasts',
            pic: 'podcasts.svg',
            onTapFunction: () {
              _onSelectItem(10);
              addToPageList(10);
            },
            id: 10,
          ),
        ],
      ),
      ExpansionTile(
        tilePadding: EdgeInsets.all(0.0),
        initiallyExpanded: true,
        onExpansionChanged: (b) {
          setState(() {
            _isExpanded = !_isExpanded; //using set state just to exemplify
          });
        },
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SvgPicture.asset(
            'assets/iconsvg/settings.svg',
            height: 20,
            width: 20,
          ),
        ),
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(_isExpanded
              ? Icons.keyboard_arrow_up
              : Icons.keyboard_arrow_down),
        ),
        children: <Widget>[
          ExpansionTileChild(
            title: 'Account Settings',
            pic: 'accountSettings.svg',
            onTapFunction: () {
              _onSelectItem(11);
              addToPageList(11);
            },
            id: 11,
          ),
          ExpansionTileChild(
            title: 'Security Settings',
            pic: 'securitySettings.svg',
            onTapFunction: () {
              _onSelectItem(12);
              addToPageList(12);
            },
            id: 12,
          ),
          ExpansionTileChild(
            title: 'Notification Settings',
            pic: 'notificationSettings.svg',
            onTapFunction: () {
              _onSelectItem(13);
              addToPageList(13);
            },
            id: 13,
          ),
          ExpansionTileChild(
            title: 'Appearance Settings',
            pic: 'appearanceSettings.svg',
            onTapFunction: () {
              _onSelectItem(14);
              addToPageList(14);
            },
            id: 14,
          ),
        ],
      ),
      ExpansionTile(
        tilePadding: EdgeInsets.all(0.0),
        initiallyExpanded: true,
        onExpansionChanged: (b) {
          setState(() {
            _isExpanded = !_isExpanded; //using set state just to exemplify
          });
        },
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SvgPicture.asset(
            'assets/iconsvg/glossary2.svg',
            height: 20,
            width: 20,
          ),
        ),
        title: Text(
          "Glossary",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(_isExpanded
              ? Icons.keyboard_arrow_up
              : Icons.keyboard_arrow_down),
        ),
        children: <Widget>[
          ExpansionTileChild(
            title: 'Buy Words',
            pic: 'buyWords.svg',
            onTapFunction: () {
              _onSelectItem(15);
              addToPageList(15);
            },
            id: 15,
          ),
          ExpansionTileChild(
            title: 'My Words',
            pic: 'myWords.svg',
            onTapFunction: () {
              _onSelectItem(16);
              addToPageList(16);
            },
            id: 16,
          ),
        ],
      ),
    ];
    var width = MediaQuery.of(context).size.width;
    var isNotPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return WillPopScope(
      onWillPop: () async {
        if (pageList[pageList.length - 1] == 0) {
          // Navigator.pushNamed(context, '/Navigation Screen');
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => MyNavigationBar(true)));
          return true;
        } else {
          pageList.removeLast();
          setState(() => _selectedDrawerIndex = pageList[pageList.length - 1]);
          return false;
        }
      },
      child: new Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          leading: Builder(
            builder: (context) => FlatButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },

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
        drawer: Container(
          width: isNotPortrait ? width * 0.7 : width * 0.4,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15)),
            child: new Drawer(
              child: SingleChildScrollView(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.only(top: 30.0, left: 10.0, bottom: 20.0),
                      child: MaterialButton(
                        onPressed: () {
                          // Navigator.of(context).pushReplacement(MaterialPageRoute(
                          //     builder: (context) => HomePage(true)));
                          // Navigator.pushNamed(context, '/Navigation Screen');
                          // Navigator.pushReplacementNamed(
                          //     context, '/Navigation Screen');
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyNavigationBar(true)));
                          // Navigator.pushNamed(context, '/Navigation Screen2');
                          // Navigator.of(context).pop();
                        },
                        child: Text(
                          'koolib logo',
                          style: TextStyle(
                            color: Color(0xff0077B5),
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    ),
                    new Column(children: drawerOptions),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: _getDrawerItemWidget(_selectedDrawerIndex),
      ),
    );
  }

  void addToPageList(int i) {
    if (pageList[pageList.length - 1] == i) {
      //dont add to list
    } else {
      pageList.add(i);
    }
  }
}

class ExpansionTileChild extends StatelessWidget {
  ExpansionTileChild(
      {required this.title,
      required this.pic,
      required this.onTapFunction,
      required this.id});
  final String title, pic;
  final VoidCallback onTapFunction;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        child: ListTile(
          // contentPadding: EdgeInsets.all(0),
          minLeadingWidth: 20,
          onTap: onTapFunction,
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          title: Text(
            '$title',
            style: TextStyle(
                color:
                    id == _selectedDrawerIndex ? Colors.black : Colors.black),
          ),
          leading: SvgPicture.asset(
            'assets/iconsvg/${this.pic}',
            height: 15,
            width: 15,
          ),
          selected: id == _selectedDrawerIndex,
          dense: true,
        ),
      ),
    );
  }
}
