import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget {
  // const FormFieldWidget({
  //   Key? key,
  //   required itemSelectedValue,
  //   required List<String> items,
  // })  : _itemSelectedValue = itemSelectedValue,
  //       _items = items,
  //       super(key: key);

  FormFieldWidget(
      {this.itemSelectedValue, required this.items, required this.title});

  final itemSelectedValue;
  final List<String> items;
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0, top: 12.0),
          child: Text(
            '$title',
            style: TextStyle(
                color: Colors.lightBlue[600], fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(),
          child: FormField<String>(
            builder: (FormFieldState<String> state) {
              return InputDecorator(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    // labelStyle: textStyle,
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 16.0),
                    hintText: 'Please select expense',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                // isEmpty: _currentSelectedValue == '',
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: itemSelectedValue,
                    isDense: true,
                    onChanged: (String? newValue) {
                      // setState(() {
                      //   _itemSelectedValue = newValue;
                      //   state.didChange(newValue);
                      // });
                    },
                    items: items.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
