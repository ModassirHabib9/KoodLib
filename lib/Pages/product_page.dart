import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/blue_button.dart';
import 'package:flutter_enter/Pages/Components/row_of_social_media_buttons.dart';
import 'package:flutter_svg/svg.dart';
import 'Components/product_container.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var isNotPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.09, vertical: 30),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset('assets/images/products.png'),
                    ),
                    SizedBox(height: 10),
                    GridView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      children: <Widget>[
                        ProductContainer(),
                        ProductContainer(),
                        ProductContainer(),
                        ProductContainer(),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'MOTIVATION LETTER (SUBMISSION) FOR SHORT TERM LANGUAGE STUDIES IN CANADA',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$129',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0077B5),
                            fontSize: 27,
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(Icons.file_copy_outlined),
                        SizedBox(width: 5),
                        Text('4 Files'),
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 50,
                      child: InkWell(
                          child: BlueButton(title: 'Buy Now', width: width)),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            height: 45.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.lightBlue,
                                width: 2.0,
                              ),
                            ),
                            child: Text(
                              'Add to cart',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: isNotPortrait ? width * 0.11 : width * 0.06,
                          height: isNotPortrait ? width * 0.11 : width * 0.06,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.5),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: SvgPicture.asset(
                              'assets/iconsvg/HeartStraight.svg',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: RowOfSocialMediaButtons(
                        title: 'Share Product',
                      ),
                    ),
                    SizedBox(height: 50),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description',
                          style: TextStyle(
                            color: Color(0xff0077B5),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mi enim non non faucibus. Duis tortor feugiat augue faucibus nunc. Aliquet vivamus eu ac, tristique in suscipit porta magna. Velit gravida viverra quam arcu consequat. Arcu, scelerisque vel tempor integer mollis nec. Lobortis urna, at dignissim ultrices pellentesque mi nunc. Auctor nunc diam lorem mauris risus, elit in convallis. Tellus eget viverra cras sapien. Amet, tincidunt ac nec scelerisque posuere aliquam. Arcu, turpis ultrices pellentesque a egestas. Eget sed feugiat felis, scelerisque. Aliquet lorem commodo augue penatibus. Facilisi nulla amet in a erat eget et non eget. '),
                        SizedBox(height: 10),
                        Text(
                            'Sagittis, eget in nisl a. Velit nulla facilisis sit hendrerit netus quam dolor mollis id. Sed nibh viverra vitae quam dui eu viverra. Enim etiam mauris ut consectetur eget ante sed auctor. Fames quisque sit quis tincidunt ullamcorper at. Blandit id vestibulum adipiscing porta. Commodo cum porta sagittis cras diam nibh sit urna. Condimentum libero iaculis sodales sapien amet vulputate. Vitae donec pellentesque donec at donec. Sit sit odio quis netus nulla. Netus sit massa convallis ullamcorper pellentesque urna. Accumsan leo sed venenatis est integer bibendum. In et sed sem sed mollis molestie. Vel integer quis vestibulum imperdiet turpis suspendisse. Vitae faucibus faucibus lorem nec vulputate dui. Integer sit cras duis et id malesuada tincidunt nunc. Malesuada arcu sem interdum orci.  Egestas viverra mi ornare dolor laoreet odio quisque fringilla diam. Nisl odio amet tincidunt posuere imperdiet. Bibendum facilisis urna sit orci. Ultrices pharetra consequat, ')
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                width: double.infinity,
                color: Color(0xffE5E5E5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Partner',
                      style: TextStyle(
                        color: Color(0xff0077B5),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 30),
                    Image.asset('assets/images/law.png'),
                    SizedBox(height: 40),
                    Column(
                      children: [
                        Text(
                          'Name: RK Immigration Lawyer',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text('Products: 14 Products',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                        SizedBox(height: 30),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Color(0xff0077B5), width: 2)),
                          width: double.infinity,
                          child: Text(
                            'View Profile',
                            style: TextStyle(
                                color: Color(0xff0077B5),
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
