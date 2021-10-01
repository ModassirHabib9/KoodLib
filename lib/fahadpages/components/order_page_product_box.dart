import 'package:flutter/material.dart';

class OrderPageProductBox extends StatelessWidget {
  const OrderPageProductBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFDFE0EB), width: 0.5),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
        ),
        child: ListTile(
          title: Text(
            "Product name",
            style: TextStyle(fontSize: 16),
          ),
          subtitle: Text(
            "Quantity: 12",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          trailing: Text(
            "Price: \$300",
            style: TextStyle(color: Color(0xff0077B5)),
          ),
        ),
      ),
    );
  }
}
