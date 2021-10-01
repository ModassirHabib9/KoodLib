import 'package:flutter/material.dart';
import 'package:flutter_enter/fahadpages/audio_player/audio_player_class.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class BoxWithAudioPlayer extends StatelessWidget {
  BoxWithAudioPlayer({required this.audioPlayerClass});

  AudioPlayerClass audioPlayerClass;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.5),
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/wadood.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name Podcasts',
                        style:
                            TextStyle(color: Colors.lightBlue, fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: !isPortrait ? width * 0.7 : width * 0.5,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rhoncus, massa nec lacus, pulvinar ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rhoncus, massa nec lacus, pulvinar ultrices.',
                        ),
                      ),
                    ],
                  ),
                  RoundCheckBox(
                    isChecked: true,
                    onTap: (selected) {},
                    size: 30,
                    uncheckedColor: Colors.yellow,
                    checkedWidget: Icon(Icons.check, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Column(
                children: [
                  audioPlayerClass.playButton(),
                  audioPlayerClass.progressBar(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
