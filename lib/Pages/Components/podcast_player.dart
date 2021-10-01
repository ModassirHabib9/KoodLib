import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/audio_player/audio_player_class.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class PodcastPlayer extends StatelessWidget {
  PodcastPlayer({required this.audioPlayerClass});

  final AudioPlayerClass audioPlayerClass;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Column(
      children: [
        audioPlayerClass.playButton2(),
        audioPlayerClass.progressBar(),
      ],
    );
  }
}
