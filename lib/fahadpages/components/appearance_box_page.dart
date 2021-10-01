import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';

class AppearancePageBox extends StatelessWidget {
  const AppearancePageBox({
    Key? key,
    required this.shouldCheck,
  }) : super(key: key);

  final bool shouldCheck;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(7.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 13.0, left: 15.0, right: 15.0),
              child: Text(
                'Show my Reviews on my Directory page',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 13.0, left: 15.0, right: 15.0, bottom: 13.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit porttitor sed dictum accumsan. Vitae facilisis velit enim elit in urna. Lorem rhoncus amet, nulla ',
              ),
            ),
            Divider(
              height: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomCheckBox(
                  value: shouldCheck,
                  shouldShowBorder: true,
                  borderColor: Colors.blue,
                  checkedFillColor: Colors.blue,
                  borderRadius: 8,
                  borderWidth: 1,
                  checkBoxSize: 22,
                  onChanged: (val) {
                    //do your stuff here
                    // setState(() {
                    //   shouldCheck = val;
                    // });
                  },
                ),
                Expanded(
                    child: Text('Lorem ipsum dolor sit amet, consectetur ')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
