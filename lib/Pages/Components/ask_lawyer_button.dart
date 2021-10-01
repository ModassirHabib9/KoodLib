import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AskLawyerButton extends StatelessWidget {
  const AskLawyerButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        // color: Theme.of(context).primaryColor,
        color: Color(0xFF00A0DC),
        child: Text(
          "Ask a lawyer",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/Ask Question Form');
        },
      ),
    );
  }
}
