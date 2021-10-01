import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/buy_word_container.dart';
import 'package:flutter_enter/Pages/Components/search_box.dart';
import 'package:flutter_enter/Pages/Constants/constants.dart';

class RenewWord extends StatelessWidget {
  const RenewWord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              children: [
                SearchBox(),
                SizedBox(height: 10),
                BuyWordContainer(
                  function: () {},
                  width: width,
                  title: 'Renew',
                  check: false,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
