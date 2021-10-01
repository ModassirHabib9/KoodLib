import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/components/submit_for_review_button.dart';
import 'package:flutter_enter/fahadpages/dashboard_fragment/store_management2.dart';

class Finance extends StatefulWidget {
  @override
  _FinanceState createState() => _FinanceState();
}

class _FinanceState extends State<Finance> {
  var _itemSelectedValue = "Store Details";
  var _items = [
    "Store Details",
    "Finance",
    "Permissions",
    "Reviews",
    "Top Products",
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Text(
            'Paypal Account',
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
                    value: _itemSelectedValue,
                    isDense: true,
                    onChanged: (String? newValue) {
                      setState(() {
                        _itemSelectedValue = newValue!;
                        state.didChange(newValue);
                      });
                    },
                    items: _items.map((String value) {
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
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Text(
            'Automatic Payout Period',
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
                    value: _itemSelectedValue,
                    isDense: true,
                    onChanged: (String? newValue) {
                      setState(() {
                        _itemSelectedValue = newValue!;
                        state.didChange(newValue);
                      });
                    },
                    items: _items.map((String value) {
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
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Text(
            'Minimum Payout Rate',
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
                    value: _itemSelectedValue,
                    isDense: true,
                    onChanged: (String? newValue) {
                      setState(() {
                        _itemSelectedValue = newValue!;
                        state.didChange(newValue);
                      });
                    },
                    items: _items.map((String value) {
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
        Center(
          child: SubmitForReviewButton(
            onTapFunction: () {},
            height: height,
            roundness: 12.0,
            width: width - width * 0.6,
            title: 'Request for change',
            fontSize: 13.0,
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Text(
            'Tax Rate',
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
                    value: _itemSelectedValue,
                    isDense: true,
                    onChanged: (String? newValue) {
                      setState(() {
                        _itemSelectedValue = newValue!;
                        state.didChange(newValue);
                      });
                    },
                    items: _items.map((String value) {
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
        CenteralizedConfirmButton(width: width),
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
                    value: _itemSelectedValue,
                    isDense: true,
                    onChanged: (String? newValue) {
                      setState(() {
                        _itemSelectedValue = newValue!;
                        state.didChange(newValue);
                      });
                    },
                    items: _items.map((String value) {
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
        CenteralizedConfirmButton(width: width),
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
                    value: _itemSelectedValue,
                    isDense: true,
                    onChanged: (String? newValue) {
                      setState(() {
                        _itemSelectedValue = newValue!;
                        state.didChange(newValue);
                      });
                    },
                    items: _items.map((String value) {
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
        CenteralizedConfirmButton(width: width),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 10.0,
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => StoreManagement2()));
              },
              child: Container(
                width: width * 0.5,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    color: Colors.lightBlueAccent,
                    width: 2.0,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Add Tax Rate for product',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Text(
            'Payment Account',
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
                    value: _itemSelectedValue,
                    isDense: true,
                    onChanged: (String? newValue) {
                      setState(() {
                        _itemSelectedValue = newValue!;
                        state.didChange(newValue);
                      });
                    },
                    items: _items.map((String value) {
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
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.only(),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.blueGrey,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: TextField(
                // readOnly: editable,
                maxLength: 300,
                // style: TextStyle(
                //   color: Colors.green[300],
                // ),
                maxLines: 5,
                decoration: InputDecoration.collapsed(
                  hintText: "Description",
                  hintStyle: TextStyle(
                    color: Colors.blueGrey[200],
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}

class CenteralizedConfirmButton extends StatelessWidget {
  const CenteralizedConfirmButton({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 10.0,
        ),
        child: MaterialButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => StoreManagement2()));
          },
          child: Container(
            width: width * 0.3,
            height: 40.0,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(8.0),
              // border: Border.all(
              //   color: Colors.lightBlueAccent,
              //   width: 2.0,
              // ),
            ),
            alignment: Alignment.center,
            child: Text(
              'Confirm',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 11.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
