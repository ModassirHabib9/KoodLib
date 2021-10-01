import 'package:flutter/material.dart';
import 'package:flutter_enter/screens/HomePage.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/OrderPage.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/UserAccountSettings.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/UserMessagePage.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/UserNotificationSettings.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/UserSecuritySettingPage.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/YourProduct.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/editor_pick_page.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/my_favourites.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/my_watchlist.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/user_questions.dart';
import 'package:flutter_enter/screens/UserDashboardMenu/your_wish_list_page.dart';
import 'package:flutter_enter/screens/custom_dialog_box.dart';
import 'package:flutter_svg/svg.dart';

import '../main.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
int _selectedDrawerIndex = 0;

class UserDashboardMain extends StatefulWidget {
  @override
  _UserDashboardMainState createState() => _UserDashboardMainState();
}

class _UserDashboardMainState extends State<UserDashboardMain> {
  List<int> pageList = [0];
  void addToPageList(int i) {
    if (pageList[pageList.length - 1] == i) {
      //dont add to list
    } else {
      pageList.add(i);
    }
  }

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new YourProductPage();
      case 1:
        return new YourWishlistPage();
      case 2:
        return new EditorPicksPage();
      case 3:
        return new OrderPage();
      case 4:
        return new UserMessagesPage();
      // case 5:
      //   return new UserMessagesPage();
      case 6:
        return new MyWatchlist();
      case 7:
        return new UserQuestions();
      case 8:
        return new MyFavourites();
      case 9:
        return new UserAccountSettings();
      case 10:
        return new UserSecurityPage();
      case 11:
        return new UserNotificationSettings();
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

  int _selectedDrawerIndex = 0;
  bool _isExpanded = true;
  @override
  Widget build(BuildContext context) {
    var isNotPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
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
            title: 'Your Products',
            pic: 'YourProducts.svg',
            onTapFunction: () {
              _onSelectItem(0);
              addToPageList(0);
            },
            id: 0,
          ),
          ExpansionTileChild(
            title: 'Your Wishlist',
            pic: 'YourWishlist.svg',
            onTapFunction: () {
              _onSelectItem(1);
              addToPageList(1);
            },
            id: 1,
          ),
          ExpansionTileChild(
            title: 'Editor\'s Picks',
            pic: 'EditorsPicks.svg',
            onTapFunction: () {
              _onSelectItem(2);
              addToPageList(2);
            },
            id: 2,
          ),
        ],
      ),
      ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SvgPicture.asset('assets/iconsvg/Orders.svg'),
        ),
        title: Text(
          'Orders',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        selected: 3 == _selectedDrawerIndex,
        onTap: () {
          _onSelectItem(3);
          addToPageList(3);
        },
        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
        dense: true,
      ),
      Divider(
        thickness: 1,
      ),
      ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SvgPicture.asset('assets/iconsvg/Messages2.svg'),
        ),
        title: Text(
          'Messages',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        selected: 4 == _selectedDrawerIndex,
        onTap: () {
          _onSelectItem(4);
          addToPageList(4);
        },
        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
        dense: true,
      ),
      Divider(
        thickness: 1,
      ),
      ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SvgPicture.asset('assets/iconsvg/PurchaseHistory.svg'),
        ),
        title: Text(
          'Purchase History',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        selected: 5 == _selectedDrawerIndex,
        onTap: () {
          _onSelectItem(5);
          addToPageList(5);
        },
        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
        dense: true,
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
            'assets/iconsvg/MyActivities.svg',
            height: 20,
            width: 20,
          ),
        ),
        title: Text(
          "My Activities",
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
            title: 'My watchlist',
            pic: 'MyWatchlist.svg',
            onTapFunction: () {
              _onSelectItem(6);
              addToPageList(6);
            },
            id: 6,
          ),
          ExpansionTileChild(
            title: 'Questions',
            pic: 'questions.svg',
            onTapFunction: () {
              _onSelectItem(7);
              addToPageList(7);
            },
            id: 7,
          ),
          ExpansionTileChild(
            title: 'My Favourites',
            pic: 'MyFavourites2.svg',
            onTapFunction: () {
              _onSelectItem(8);
              addToPageList(8);
            },
            id: 8,
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
              _onSelectItem(9);
              addToPageList(9);
            },
            id: 9,
          ),
          ExpansionTileChild(
            title: 'Security Settings',
            pic: 'securitySettings.svg',
            onTapFunction: () {
              _onSelectItem(10);
              addToPageList(10);
            },
            id: 10,
          ),
          ExpansionTileChild(
            title: 'Notification Settings',
            pic: 'notificationSettings.svg',
            onTapFunction: () {
              _onSelectItem(11);
              addToPageList(11);
            },
            id: 11,
          ),
        ],
      ),
    ];
    var width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async {
        if (pageList[pageList.length - 1] == 0) {
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
                          // Navigator.of(context).pushReplacement(
                          //     MaterialPageRoute(
                          //         builder: (context) => HomePage(true)));
                          // Navigator.pushReplacementNamed(
                          //     context, '/Navigation Screen');
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyNavigationBar(true)));
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
