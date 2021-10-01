import 'package:flutter/material.dart';
import 'package:flutter_enter/screens/HomePage.dart';
import '../fahadpages/dashboard_fragment/add_new_product_1.dart';
import '../fahadpages/dashboard_fragment/payout_report.dart';
import '../fahadpages/dashboard_fragment/sales_report.dart';
import '../fahadpages/dashboard_fragment/questions.dart';
import '../fahadpages/dashboard_fragment/manage_product.dart';
import '../fahadpages/dashboard_fragment/your_directory_statistics.dart';
import '../fahadpages/dashboard_fragment/your_store_statistic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardMenu extends StatefulWidget {
  @override
  _DashboardMenuState createState() => _DashboardMenuState();
}

class _DashboardMenuState extends State<DashboardMenu> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ExpansionTile(
                    onExpansionChanged: (b) {
                      setState(() {
                        _isExpanded =
                            !_isExpanded; //using set state just to exemplify
                      });
                    },
                    leading: SvgPicture.asset(
                      'assets/iconsvg/dash.svg',
                      height: 20,
                      width: 20,
                    ),
                    title: Text(
                      "Dashboard",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => YourStoreStatistic()));
                        },
                      ),
                      ExpansionTileChild(
                        title: 'Your Directory Statistic',
                        pic: 'directoryStatistic.svg',
                        onTapFunction: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      YourDirectoryStatistics()));
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    onExpansionChanged: (b) {
                      setState(() {
                        _isExpanded =
                            !_isExpanded; //using set state just to exemplify
                      });
                    },
                    leading: SvgPicture.asset(
                      'assets/iconsvg/yourStore.svg',
                      height: 20,
                      width: 20,
                    ),
                    title: Text(
                      "Your Store",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddNewProduct1()));
                          }),
                      ExpansionTileChild(
                          title: 'Sales perort',
                          pic: 'salesperort.svg',
                          onTapFunction: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ManageProduct()));
                          }),
                      ExpansionTileChild(
                          title: 'Payouts',
                          pic: 'payouts.svg',
                          onTapFunction: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PayoutReport()));
                          }),
                      ExpansionTileChild(
                          title: 'Message',
                          pic: 'messages.svg',
                          onTapFunction: () {}),
                      ExpansionTileChild(
                          title: 'Store Management',
                          pic: 'storeManagement.svg',
                          onTapFunction: () {}),
                    ],
                  ),
                  ExpansionTile(
                    onExpansionChanged: (b) {
                      setState(() {
                        _isExpanded =
                            !_isExpanded; //using set state just to exemplify
                      });
                    },
                    leading: SvgPicture.asset(
                      'assets/iconsvg/yourDirectory.svg',
                      height: 20,
                      width: 20,
                    ),
                    title: Text(
                      "Your Directory",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
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
                          onTapFunction: () {}),
                      ExpansionTileChild(
                          title: 'Questions',
                          pic: 'questions.svg',
                          onTapFunction: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Questions()));
                          }),
                      ExpansionTileChild(
                          title: 'News & Blogs',
                          pic: 'newsBlogs.svg',
                          onTapFunction: () {}),
                      ExpansionTileChild(
                          title: 'Podcasts',
                          pic: 'podcasts.svg',
                          onTapFunction: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SalesReport()));
                          }),
                    ],
                  ),
                  ExpansionTile(
                    onExpansionChanged: (b) {
                      setState(() {
                        _isExpanded =
                            !_isExpanded; //using set state just to exemplify
                      });
                    },
                    leading: SvgPicture.asset(
                      'assets/iconsvg/settings.svg',
                      height: 20,
                      width: 20,
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
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
                          onTapFunction: () {}),
                      ExpansionTileChild(
                          title: 'Security Settings',
                          pic: 'securitySettings.svg',
                          onTapFunction: () {}),
                      ExpansionTileChild(
                          title: 'Notification Settings',
                          pic: 'notificationSettings.svg',
                          onTapFunction: () {}),
                      ExpansionTileChild(
                          title: 'Appearance Settings',
                          pic: 'appearanceSettings.svg',
                          onTapFunction: () {}),
                    ],
                  ),
                  ExpansionTile(
                    onExpansionChanged: (b) {
                      setState(() {
                        _isExpanded =
                            !_isExpanded; //using set state just to exemplify
                      });
                    },
                    leading: SvgPicture.asset(
                      'assets/iconsvg/glossary2.svg',
                      height: 20,
                      width: 20,
                    ),
                    title: Text(
                      "Glossary",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
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
                          onTapFunction: () {}),
                      ExpansionTileChild(
                          title: 'My Words',
                          pic: 'myWords.svg',
                          onTapFunction: () {}),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ExpansionTileChild extends StatelessWidget {
  ExpansionTileChild(
      {required this.title, required this.pic, required this.onTapFunction});
  String title, pic;
  VoidCallback onTapFunction;

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
          title: Text('$title'),
          leading: SvgPicture.asset(
            'assets/iconsvg/${this.pic}',
            height: 15,
            width: 15,
          ),
          dense: true,
        ),
      ),
    );
  }
}
