import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/podcast_player.dart';
import 'package:flutter_enter/fahadpages/audio_player/audio_player_class.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PodCastContainer extends StatelessWidget {
  final dynamic fSeeMore;
  final AudioPlayerClass audioPlayerClass;

  const PodCastContainer({
    Key? key,
    required this.audioPlayerClass,
    required this.fSeeMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffF5FCFF),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              color: Colors.black.withOpacity(0.1),
              blurRadius: 1,
              spreadRadius: 1,
            )
          ],
        ),
        padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 40),
        child: Column(
          children: [
            Container(
              child: Image.asset('assets/images/profileEp.png'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Name podcast',
                  style: TextStyle(
                      color: Color(0xff0077B5),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Text(
                  '#23',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nibh gravida adipiscing lectus lacus sed sit. Donec in at neque eget congue arcu, eget praesent mattis. Eu tristique vitae a, lectus fames eget. Non morbi fermentum pretium lectus tristique tellus. Sapien ultricies vel in ipsum in augue enim in risus.'),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: fSeeMore,
                    child: Text(
                      'Read more',
                      style: TextStyle(color: Color(0xff00A0DC)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            PodcastPlayer(audioPlayerClass: audioPlayerClass),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.all(10),
              height: 50,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add, color: Colors.grey),
                  SizedBox(width: 10),
                  Text('Follow'),
                ],
              ),
            ),
            SizedBox(height: 15),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.blue[500],
                ),
                Icon(
                  FontAwesomeIcons.google,
                  color: Colors.red[900],
                ),
                Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.blue[400],
                ),
                Icon(FontAwesomeIcons.facebook, color: Colors.blue),
              ],
            )
          ],
        ),
      ),
    );
  }
}
