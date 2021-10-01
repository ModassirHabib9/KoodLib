import 'package:custom_check_box/custom_check_box.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class storeManagerBox extends StatelessWidget {
  const storeManagerBox({
    Key? key,
    required bool isExpanded_storeManager,
  })  : _isExpanded_storeManager = isExpanded_storeManager,
        super(key: key);

  final bool _isExpanded_storeManager;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // border:
        //     _isExpanded_storeManager ? null : Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: ExpansionTileCard(
        borderRadius: BorderRadius.circular(4.0),
        baseColor: Colors.white,
        onExpansionChanged: (b) {
          // setState(() {
          //   _isExpanded_storeManager =
          //       !_isExpanded_storeManager; //using set state just to exemplify
          // });
        },
        leading: CircleAvatar(
          radius: 15.0,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(45.0),
              child: Image.asset('assets/images/testimage.jpg')),
        ),
        title: Text('Name Surname'),
        subtitle: Text('Store Manager'),
        // title: Expanded(
        //   child: Row(
        //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Column(
        //         children: [
        //           CircleAvatar(
        //             radius: 15.0,
        //             child: ClipRRect(
        //                 borderRadius:
        //                     BorderRadius.circular(45.0),
        //                 child: Image.asset(
        //                     'assets/images/testimage.jpg')),
        //           ),
        //         ],
        //       ),
        //       SizedBox(
        //         width: 2.0,
        //       ),
        //       Column(
        //         children: [
        //           Text('Name Surname'),
        //           Text('Store Manager'),
        //         ],
        //       )
        //     ],
        //   ),
        // ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              _isExpanded_storeManager
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down,
              color: Colors.black,
              // size: 13.0,
            ),
            MaterialButton(
              minWidth: 10.0,
              onPressed: () {
                print('menu button presssed');
              },
              child: SvgPicture.asset('assets/iconsvg/menu.svg'),
            ),
          ],
        ),
        children: <Widget>[
          Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          CheckBoxRow(),
          CheckBoxRow(),
          CheckBoxRow(),
          CheckBoxRow(),
          CheckBoxRow(),
          CheckBoxRow(),
          CheckBoxRow(),
        ],
      ),
    );
  }
}

class CheckBoxRow extends StatelessWidget {
  const CheckBoxRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomCheckBox(
          value: false,
          shouldShowBorder: true,
          borderColor: Colors.grey,
          checkedFillColor: Colors.grey,
          borderRadius: 6,
          borderWidth: 2,
          checkBoxSize: 18,
          onChanged: (val) {
            //do your stuff here
            // setState(() {
            //   shouldCheck = val;
            // });
          },
        ),
        Expanded(child: Text('Lorem ipsum dolor sit amet, consectetur')),
      ],
    );
  }
}
