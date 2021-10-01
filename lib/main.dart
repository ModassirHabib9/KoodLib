// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/ImmigrationGlossaryPage.dart';
import 'package:flutter_enter/Pages/directory_sign_up_form.dart';
import 'package:flutter_enter/Pages/media_page.dart';
import 'package:flutter_enter/Pages/profile_message_sending_container.dart';
import 'package:flutter_enter/Pages/qa_page.dart';
import 'package:flutter_enter/Pages/renew_word.dart';
import 'package:flutter_enter/screens/ForgotPassword.dart';
import 'package:flutter_enter/Pages/Homepage2_e_CommerceService.dart';
import 'package:flutter_enter/screens/welcome_page.dart';
import 'package:flutter_enter/screens/toggle_pages.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Pages/HomePageDirectory.dart';
import 'Pages/JobsForImmigrants.dart';
import 'screens/HomePage.dart';
import 'Pages/detailed_Podcasts_screen.dart';
import 'Pages/pod_casts_lists_screen.dart';

void main() {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Koolib",
      theme: ThemeData(
        primaryColor: Colors.red,
        brightness: Brightness.light,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/Navigation Screen': (context) => MyNavigationBar(false),
        '/Navigation Screen2': (context) => MyNavigationBar(true),
        '/Home Page': (context) => HomePage(false),
        '/Glossary Page': (context) => ImmigrationGlossaryPage(),
        '/Media Page for Videos': (context) => MediaPage(pageKey: 0),
        '/Media Page for Blogs': (context) => MediaPage(pageKey: 1),
        '/Media Page for News': (context) => MediaPage(pageKey: 2),
        '/Detailed Episode Screen': (context) => DetailedPodcastPage(),
        '/Renew Word': (context) => RenewWord(),
        '/Directory Page': (context) => HomePageDirectory(),
        '/Podcast Page': (context) => PodCastsListScreen(),
        '/PostJob Page': (context) => JobsForImmigrants(),
        '/Toggle Page': (context) => TogglePages(),
        '/Directory Sign Up Form': (context) => DirectorySignUpForm(),
        '/Ask Question Form': (context) => QAPage(),
        '/Home Page for Commerce': (context) => Homepage2_e_CommerceService(),
        '/Authentication': (context) => ForgotPassword(),
      },
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  final bool openDrawer;
  MyNavigationBar(this.openDrawer);
  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  bool isDrawerToBeOpen;
  final _selectedItemColor = Colors.white;
  final _unselectedItemColor = Color(0xff8fd5f0);
  final _selectedBgColor = Color(0xff038EC2);
  final _unselectedBgColor = Color(0xff00A0DC);
  int _selectedIndex = 1;
  @override
  void initState() {
    // TODO: implement initState
    isDrawerToBeOpen = widget.openDrawer;
    _widgetOptions = [
      ProfileMessageSendingScreen(),
      HomePage(isDrawerToBeOpen),
      HomePage(false),
    ];
    super.initState();
  }

  List<Widget> _widgetOptions = <Widget>[];

  // List<Widget> _widgetOptions = <Widget>[
  //   ProfileMessageSendingScreen(),
  //   HomePage(false),
  //   HomePage(false),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      isDrawerToBeOpen = false;
      _widgetOptions = [
        ProfileMessageSendingScreen(),
        HomePage(false),
        HomePage(false),
      ];
    });
  }

  Color _getBgColor(int index) =>
      _selectedIndex == index ? _selectedBgColor : _unselectedBgColor;

  Color _getItemColor(int index) =>
      _selectedIndex == index ? _selectedItemColor : _unselectedItemColor;

  Widget _buildIcon(SvgPicture iconData, String text, int index) => Container(
        width: 85,
        height: 47,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: _getBgColor(index),
          ),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                iconData,
                // Text(text,
                //     style:
                //         TextStyle(fontSize: 12, color: _getItemColor(index))),
              ],
            ),
            onTap: () => _onItemTapped(index),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        backgroundColor: Color(0xff00A0DC),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _buildIcon(
                SvgPicture.asset(
                  'assets/iconsvg/carticon.svg',
                  color: _selectedIndex == 0 ? Colors.white : Color(0xff8fd5f0),
                ),
                'Cart',
                0),
            backgroundColor: Color(0xFF038EC2),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF038EC2),
            icon: _buildIcon(
                SvgPicture.asset(
                  'assets/iconsvg/homeicon.svg',
                  color: _selectedIndex == 1 ? Colors.white : Color(0xff8fd5f0),
                ),
                'Home',
                1),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF038EC2),
            icon: _buildIcon(
                SvgPicture.asset(
                  'assets/iconsvg/bagicon.svg',
                  color: _selectedIndex == 2 ? Colors.white : Color(0xff8fd5f0),
                ),
                'School',
                2),
            title: SizedBox.shrink(),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: _selectedItemColor,
        unselectedItemColor: _unselectedItemColor,
      ),
    );
  }
}

// 8fd5f0
