import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/podcast_player.dart';
import 'package:flutter_enter/fahadpages/audio_player/audio_player_class.dart';
import 'package:just_audio/just_audio.dart';
import 'Components/bottom_menu.dart';
import 'Components/listen_row.dart';
import 'Components/page_number.dart';
import 'Components/podcast_container.dart';
import 'Components/row_of_social_media_buttons.dart';

class PodCastsListScreen extends StatefulWidget {
  const PodCastsListScreen({Key? key}) : super(key: key);

  @override
  _PodCastsListScreenState createState() => _PodCastsListScreenState();
}

class _PodCastsListScreenState extends State<PodCastsListScreen> {
  AudioPlayerClass audioPlayerClass = AudioPlayerClass(
      'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3');
  AudioPlayerClass audioPlayerClass2 = AudioPlayerClass(
      'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3');
  AudioPlayerClass audioPlayerClass3 = AudioPlayerClass(
      'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3');
  late AudioPlayer _player;
  final url = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3';
  late Stream<DurationState> _durationState;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var isNotPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
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
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/iconPng/flag.png',
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Language: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('English'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nibh gravida adipiscing lectus lacus sed sit. Donec in at neque eget congue arcu, eget praesent mattis. Eu tristique vitae a, lectus fames eget. Non morbi fermentum pretium lectus tristique tellus. Sapien ultricies vel in ipsum in augue enim in risus.'),
                    SizedBox(height: 20),
                    PodcastPlayer(audioPlayerClass: audioPlayerClass),
                    SizedBox(height: 40),
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
                        RowOfSocialMediaButtons()
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  PodCastContainer(
                    audioPlayerClass: audioPlayerClass2,
                    fSeeMore: () {
                      Navigator.pushNamed(context, '/Detailed Episode Screen');
                    },
                  ),
                  PodCastContainer(
                    audioPlayerClass: audioPlayerClass3,
                    fSeeMore: () {
                      Navigator.pushNamed(context, '/Detailed Episode Screen');
                    },
                  ),
                ],
              ),
              PageNumbers(),
              SizedBox(height: 90),
              Text(
                'Let us know what\nyou want to hear',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(height: 30),
              Container(
                height: height * 0.3,
                width: width * 0.85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                height: isNotPortrait ? height * 0.09 : height * 0.2,
                width: width * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff00A0DC),
                ),
                child: Text(
                  'Send',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 30),
              BottomMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
