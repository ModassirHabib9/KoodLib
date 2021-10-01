import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class ShowEntries extends StatelessWidget {
  const ShowEntries({
    Key? key,
    required this.width,
    required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

  final double width;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: width * 0.1,
              child: Text(
                'Show',
                style: TextStyle(
                  color: HexColor('#A1A1A1'),
                ),
              ),
            ),
            // SizedBox(
            //   width: 10.0,
            // ),
            Container(
              // width: width * 0.25,
              child: Row(
                children: [
                  SizedBox(
                    // width: width * 0.6,
                    height: 60.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Container(
                          width: 59.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blueGrey,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(),
                                  controller: _controller,
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                    signed: true,
                                  ),
                                  inputFormatters: <TextInputFormatter>[
                                    WhitelistingTextInputFormatter.digitsOnly
                                  ],
                                ),
                              ),
                              Container(
                                height: 30.0,
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(),
                                      child: InkWell(
                                        child: Icon(
                                          Icons.arrow_drop_up,
                                          size: 15.0,
                                        ),
                                        onTap: () {
                                          int currentValue =
                                              int.parse(_controller.text);
                                          // setState(() {
                                          //   currentValue++;
                                          //   _controller
                                          //           .text =
                                          //       (currentValue)
                                          //           .toString(); // incrementing value
                                          // });
                                        },
                                      ),
                                    ),
                                    InkWell(
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        size: 15.0,
                                      ),
                                      onTap: () {
                                        int currentValue =
                                            int.parse(_controller.text);
                                        // setState(() {
                                        //   print(
                                        //       "Setting state");
                                        //   currentValue--;
                                        //   _controller
                                        //       .text = (currentValue >
                                        //               0
                                        //           ? currentValue
                                        //           : 0)
                                        //       .toString(); // decrementing value
                                        // });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'entries',
              style: TextStyle(
                color: HexColor('#A1A1A1'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
