import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/components/text_field_widget.dart';

class AddStoreManager extends StatefulWidget {
  @override
  _AddStoreManagerState createState() => _AddStoreManagerState();
}

class _AddStoreManagerState extends State<AddStoreManager> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldWidget(
                  textController: textController,
                  title: 'Add Store Manager',
                  hint: 'Enter Email'),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(),
                child: Container(
                  alignment: Alignment.center,
                  height: 60.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.lightBlue, width: 1.5),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
