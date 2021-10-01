import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobContainer extends StatelessWidget {
  const JobContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: Color(0xFFDBDBDB),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.withOpacity(0.5))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            "assets/images/Avatar.png",
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Template Factory",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "• Oliver, BC",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xFFA1A1A1), width: 2),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: new Icon(
                        Icons.favorite_border,
                        color: Color(0xFFA1A1A1),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 20),
                  child: Row(
                    children: [
                      Text(
                        "General Labour",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "New",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 5),
                  child: Text(
                    "\$40 an hour",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pulvinar eu praesent elementum ridiculus morbi quisque. Pellentesque suspendisse convallis rutrum nunc. Placerat mattis aliquam massa nunc neque a. Nunc massa lectus vitae morbi aliquam sapien bibendum quis.",
                    style: TextStyle(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
