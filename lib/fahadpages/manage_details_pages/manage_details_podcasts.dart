import 'package:flutter/material.dart';
import 'package:flutter_enter/Pages/Components/page_number.dart';
import 'package:flutter_enter/fahadpages/audio_player/audio_player_class.dart';
import 'package:flutter_enter/fahadpages/components/box_with_audio_player.dart';
import 'package:flutter_enter/fahadpages/components/search_widget2.dart';
import 'package:just_audio/just_audio.dart';
import 'package:number_paginator/number_paginator.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:flutter/rendering.dart';

class ManageDetailsPodcasts extends StatefulWidget {
  @override
  _ManageDetailsPodcastsState createState() => _ManageDetailsPodcastsState();
}

class _ManageDetailsPodcastsState extends State<ManageDetailsPodcasts> {
  AudioPlayerClass audioPlayerClass = AudioPlayerClass(
      'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3');
  AudioPlayerClass audioPlayerClass2 = AudioPlayerClass(
      'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3');
  AudioPlayerClass audioPlayerClass3 = AudioPlayerClass(
      'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3');
  late AudioPlayer _player;
  final url = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3';
  late Stream<DurationState> _durationState;
  var _isShowingWidgetOutline = false;

  List lst = [1, 2, 3, 4];
  int _numPages = 10;
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SearchWidget2(width: width),
        BoxWithAudioPlayer(
          audioPlayerClass: audioPlayerClass,
        ),
        BoxWithAudioPlayer(audioPlayerClass: audioPlayerClass2),
        BoxWithAudioPlayer(audioPlayerClass: audioPlayerClass3),
        Container(
          width: width * 0.7,
          child: NumberPaginator(
            height: 40.0,
            buttonShape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
            buttonSelectedBackgroundColor: Colors.white,
            buttonSelectedForegroundColor: Colors.blueAccent,
            buttonUnselectedForegroundColor: Colors.black,
            numberPages: _numPages,
            onPageChange: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
        )
      ],
    );
  }

  BoxDecoration _widgetBorder() {
    return BoxDecoration(
      border: _isShowingWidgetOutline
          ? Border.all(color: Colors.red)
          : Border.all(color: Colors.transparent),
    );
  }
}
