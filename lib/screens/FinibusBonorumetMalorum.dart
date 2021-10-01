import 'package:flutter/material.dart';
import 'welcome_page.dart';
import 'ShoppingCart.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FinibusMalorum extends StatefulWidget {
  const FinibusMalorum({Key? key}) : super(key: key);

  @override
  _FinibusMalorumState createState() => _FinibusMalorumState();
}

class _FinibusMalorumState extends State<FinibusMalorum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/mainpage.jpg",
                  height: 212,
                  width: 340,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Finibus Bonorum et Malorum",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Written by",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.w900),
                    // textAlign: TextAlign.start,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ShoppingCart()));
                    },
                    child: Text(
                      " John doe",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w900),
                      // textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "Monday  May 21",
                  )
                ],
              ),
              Divider(
                height: 20,
                color: Colors.blueGrey,
              ),
              SizedBox(
                  width: 340,
                  height: 1610,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Section 1.10.32 of de Finibus Bonorum et Malorum, written by Cicero in 45 BC Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? 1914 translation by H. Rackham But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\n",
                          style: TextStyle(fontSize: 14, wordSpacing: 1),
                        ),
                        Text(
                          "Section 1.10.32 of de Finibus Bonorum et Malorum\n\n",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 1),
                        ),
                        Text(
                            "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat."),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Share Blog",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 18, color: Colors.blue),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.add),
                            Icon(Icons.add),
                            Icon(Icons.add),
                            Icon(Icons.add),
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
