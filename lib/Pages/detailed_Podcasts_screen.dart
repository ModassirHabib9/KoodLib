import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/pod_casts_lists_screen.dart';
import 'package:flutter_enter/fahadpages/audio_player/audio_player_class.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'Components/listen_row.dart';
import 'Components/podcast_player.dart';

class DetailedPodcastPage extends StatefulWidget {
  const DetailedPodcastPage({Key? key}) : super(key: key);

  @override
  _DetailedPodcastPageState createState() => _DetailedPodcastPageState();
}

class _DetailedPodcastPageState extends State<DetailedPodcastPage> {
  AudioPlayerClass audioPlayerClass = AudioPlayerClass(
      'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3');
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xffF5FCFF), boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 1,
                    spreadRadius: 1,
                  )
                ]),
                child: Column(
                  children: [
                    Text(
                      'Latest Episode',
                      style: TextStyle(
                          color: Color(0xff0077B5),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Image.asset('assets/images/episodeImage.jpg'),
                    ),
                    SizedBox(height: 25),
                    Text(
                      'Name Podcast',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'LEGAL TECH',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 2,
                          height: 45,
                          color: Color(0xff00A0DC),
                        ),
                        Text('00:32:50',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xff00A0DC),
                          width: 2,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/iconPng/alert.png',
                            height: width * 0.035,
                            width: width * 0.035,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Sign up for alerts about new episodes',
                            style: TextStyle(
                              color: Color(0xff00A0DC),
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  isPortrait ? width * 0.035 : width * 0.032,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    PodcastPlayer(audioPlayerClass: audioPlayerClass),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(35),
                child: Column(
                  children: [
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mi enim non non faucibus. Duis tortor feugiat augue faucibus nunc. Aliquet vivamus eu ac, tristique in suscipit porta magna. Velit gravida viverra quam arcu consequat. Arcu, scelerisque vel tempor integer mollis nec. Lobortis urna, at dignissim ultrices pellentesque mi nunc. Auctor nunc diam lorem mauris risus, elit in convallis. Tellus eget viverra cras sapien. Amet, tincidunt ac nec scelerisque posuere aliquam. Arcu, turpis ultrices pellentesque a egestas. Eget sed feugiat felis, scelerisque. Aliquet lorem commodo augue penatibus. Facilisi nulla amet in a erat eget et non eget. '),
                    SizedBox(height: 30),
                    Text(
                        'Sagittis, eget in nisl a. Velit nulla facilisis sit hendrerit netus quam dolor mollis id. Sed nibh viverra vitae quam dui eu viverra. Enim etiam mauris ut consectetur eget ante sed auctor. Fames quisque sit quis tincidunt ullamcorper at. Blandit id vestibulum adipiscing porta. Commodo cum porta sagittis cras diam nibh sit urna. Condimentum libero iaculis sodales sapien amet vulputate. Vitae donec pellentesque donec at donec. Sit sit odio quis netus nulla. Netus sit massa convallis ullamcorper pellentesque urna. Accumsan leo sed venenatis est integer bibendum. In et sed sem sed mollis molestie. Vel integer quis vestibulum imperdiet turpis suspendisse. Vitae faucibus faucibus lorem nec vulputate dui. Integer sit cras duis et id malesuada tincidunt nunc. Malesuada arcu sem interdum orci.  Egestas viverra mi ornare dolor laoreet odio quisque fringilla diam. Nisl odio amet tincidunt posuere imperdiet. Bibendum facilisis urna sit orci. Ultrices pharetra consequat, donec pellentesque pellentesque.'),
                    SizedBox(height: 30),
                    Text(
                        'Vitae fringilla consequat leo at ornare ut rutrum. Eu a lorem natoque augue interdum adipiscing suscipit. Tincidunt donec scelerisque volutpat ultrices neque in. Neque lobortis laoreet viverra pellentesque quam nec in. Molestie tortor fringilla quisque quam rutrum placerat euismod. Ju sto, consectetur porttitor imperdiet at quis molestie fusce duis. Dui interdum ac, aliquet tristique lorem massa donec aliquam. Arcu nulla turpis scelerisque nunc. Iaculis vulputate tincidunt feugiat nunc eu. Ut consectetur fringilla maecenas consectetur aenean. Mauris, pellentesque lectus sed pulvinar pellentesque egestas est. Eget bibendum lacus maecenas et, non maecenas neque a porttitor. '),
                    SizedBox(height: 50),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Listen & Subscribe',
                          style: TextStyle(
                            color: Color(0xff0077B5),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 20),
                        ListenRow(
                          title: 'Apple Podcast',
                          image: 'assets/iconPng/1.png',
                        ),
                        SizedBox(height: 5),
                        ListenRow(
                          title: 'Spotify',
                          image: 'assets/iconPng/3.png',
                        ),
                        SizedBox(height: 5),
                        ListenRow(
                          title: 'Stitcher',
                          image: 'assets/iconPng/2.png',
                        ),
                        SizedBox(height: 5),
                        ListenRow(
                          title: 'Google Podcast',
                          image: 'assets/iconPng/4.png',
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Share Episode',
                          style: TextStyle(
                            color: Color(0xff0077B5),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              FontAwesome.linkedin_square,
                              color: Colors.blue[500],
                            ),
                            Icon(
                              FontAwesome.google,
                              color: Colors.red[400],
                            ),
                            Icon(
                              FontAwesome.twitter,
                              color: Colors.blue[400],
                            ),
                            Icon(FontAwesome.facebook_square,
                                color: Colors.blue),
                          ],
                        ),
                        SizedBox(height: 90),
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
