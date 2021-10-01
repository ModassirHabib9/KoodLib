import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarComponents extends StatelessWidget {
  final dynamic onTap;
  final String tab1Title;
  final String tab2Title;
  final String tab3Title;
  TabBarComponents(
      {required this.onTap,
      required this.tab1Title,
      required this.tab2Title,
      required this.tab3Title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
      child: TabBar(
        unselectedLabelColor: Colors.blue,
        indicator: BoxDecoration(
            color: Color(0xff00A0DC), borderRadius: BorderRadius.circular(20)),
        onTap: onTap,
        tabs: [
          Tab(
            text: tab1Title,
          ),
          Tab(
            text: tab2Title,
          ),
          Tab(
            text: tab3Title,
          ),
        ],
      ),
    );
  }
}
