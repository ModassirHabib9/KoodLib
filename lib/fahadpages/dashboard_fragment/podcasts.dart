import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/audio_player/audio_player_class.dart';
import 'package:flutter_enter/fahadpages/components/box_with_audio_player.dart';
import 'package:flutter_enter/fahadpages/components/search_widget2.dart';

class Podcasts extends StatefulWidget {
  @override
  _PodcastsState createState() => _PodcastsState();
}

class _PodcastsState extends State<Podcasts> {
  AudioPlayerClass audioPlayerClass1 = AudioPlayerClass(
      'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp4');
  AudioPlayerClass audioPlayerClass2 = AudioPlayerClass(
      'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp4');
  AudioPlayerClass audioPlayerClass3 = AudioPlayerClass(
      'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp4');
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              children: [
                SearchWidget2(width: width),
                BoxWithAudioPlayer(audioPlayerClass: audioPlayerClass1),
                BoxWithAudioPlayer(audioPlayerClass: audioPlayerClass2),
                BoxWithAudioPlayer(audioPlayerClass: audioPlayerClass3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
