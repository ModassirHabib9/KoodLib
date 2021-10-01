import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/dashboard_fragment/add_new_product_1.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class BoxWithOnlyIconTitle extends StatelessWidget {
  BoxWithOnlyIconTitle({required this.pic, required this.title});
  String pic, title;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Expanded(
      child: Container(
        // width: double.infinity,
        // height: !isPortrait ? height * 0.4 : height * 0.3,
        // color: Colors.white60,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.lightBlue, width: 2.0),
          borderRadius: BorderRadius.circular(3.0),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddNewProduct1()));
                },
                minWidth: 0.0,
                child: SvgPicture.asset(
                  'assets/iconsvg/${pic}.svg',
                  height: 40,
                  width: 30,
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Text(
                '$title',
                style: TextStyle(
                  color: HexColor('#A1A1A1'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
