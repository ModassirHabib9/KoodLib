import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list_buttons.dart';

class PageNumbers extends StatelessWidget {
  const PageNumbers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ListButtons(
          icon: Icons.arrow_back_ios_rounded,
          check: true,
        ),
        ListButtons(title: '1', check: false),
        ListButtons(title: '2', check: false),
        ListButtons(title: '...', check: false),
        ListButtons(title: '9', check: false),
        ListButtons(title: '10', check: false),
        ListButtons(icon: Icons.arrow_forward_ios_rounded, check: true),
      ],
    );
  }
}
