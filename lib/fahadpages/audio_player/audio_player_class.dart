import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

class AudioPlayerClass {
  late AudioPlayer _player;
  String url = '';
  late Stream<DurationState> _durationState;
  var _isShowingWidgetOutline = false;

  AudioPlayerClass(String audio_url) {
    _player = AudioPlayer();
    _durationState = Rx.combineLatest2<Duration, PlaybackEvent, DurationState>(
        _player.positionStream,
        _player.playbackEventStream,
        (position, playbackEvent) => DurationState(
              progress: position,
              buffered: playbackEvent.bufferedPosition,
              total: playbackEvent.duration,
            ));

    url = audio_url;
    setUrl();
  }

  Future<void> setUrl() async {
    try {
      await _player.setUrl(url);
    } catch (e) {
      debugPrint('An error occured $e');
    }
  }

  StreamBuilder<DurationState> progressBar() {
    return StreamBuilder<DurationState>(
      stream: _durationState,
      builder: (context, snapshot) {
        final durationState = snapshot.data;
        final progress = durationState?.progress ?? Duration.zero;
        final buffered = durationState?.buffered ?? Duration.zero;
        final total = durationState?.total ?? Duration.zero;
        return ProgressBar(
          progress: progress,
          buffered: buffered,
          total: total,
          onSeek: (duration) {
            _player.seek(duration);
          },
          // onDragUpdate: (details) {
          //   debugPrint('${details.timeStamp}, ${details.localPosition}');
          // },
          // barHeight: _barHeight,
          // baseBarColor: _baseBarColor,
          // progressBarColor: _progressBarColor,
          // bufferedBarColor: _bufferedBarColor,
          // thumbColor: _thumbColor,
          // thumbGlowColor: _thumbGlowColor,
          // barCapShape: _barCapShape,
          // thumbRadius: _thumbRadius,
          // thumbCanPaintOutsideBar: _thumbCanPaintOutsideBar,
          // timeLabelLocation: _labelLocation,
          // timeLabelType: _labelType,
          // timeLabelTextStyle: _labelStyle,
          // timeLabelPadding: _labelPadding,
        );
      },
    );
  }

  StreamBuilder<PlayerState> playButton() {
    return StreamBuilder<PlayerState>(
      stream: _player.playerStateStream,
      builder: (context, snapshot) {
        final playerState = snapshot.data;
        final processingState = playerState?.processingState;
        final playing = playerState?.playing;
        if (processingState == ProcessingState.loading ||
            processingState == ProcessingState.buffering) {
          return Container(
            margin: const EdgeInsets.all(8.0),
            width: 32.0,
            height: 32.0,
            child: const CircularProgressIndicator(),
          );
        } else if (playing != true) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: IconButton(
              icon: const Icon(Icons.play_arrow),
              color: Colors.lightBlue,
              iconSize: 32.0,
              onPressed: _player.play,
            ),
          );
        } else if (processingState != ProcessingState.completed) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: IconButton(
              icon: const Icon(Icons.pause),
              iconSize: 32.0,
              color: Colors.lightBlue,
              onPressed: _player.pause,
            ),
          );
        } else {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: IconButton(
              icon: const Icon(Icons.replay),
              iconSize: 32.0,
              color: Colors.lightBlue,
              onPressed: () => _player.seek(Duration.zero),
            ),
          );
        }
      },
    );
  }

  StreamBuilder<PlayerState> playButton2() {
    return StreamBuilder<PlayerState>(
      stream: _player.playerStateStream,
      builder: (context, snapshot) {
        final playerState = snapshot.data;
        final processingState = playerState?.processingState;
        final playing = playerState?.playing;
        if (processingState == ProcessingState.loading ||
            processingState == ProcessingState.buffering) {
          return Container(
            margin: const EdgeInsets.all(8.0),
            width: 32.0,
            height: 32.0,
            child: const CircularProgressIndicator(),
          );
        } else if (playing != true) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: IconButton(
              icon: Icon(
                Icons.play_circle_outline_outlined,
              ),
              color: Colors.lightBlue,
              iconSize: 90.0,
              onPressed: _player.play,
            ),
          );
        } else if (processingState != ProcessingState.completed) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: IconButton(
              icon: const Icon(Icons.pause_circle_outline_outlined),
              iconSize: 90.0,
              color: Colors.lightBlue,
              onPressed: _player.pause,
            ),
          );
        } else {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: IconButton(
              icon: const Icon(Icons.replay),
              iconSize: 32.0,
              color: Colors.lightBlue,
              onPressed: () => _player.seek(Duration.zero),
            ),
          );
        }
      },
    );
  }
}

class DurationState {
  const DurationState({
    required this.progress,
    required this.buffered,
    this.total,
  });
  final Duration progress;
  final Duration buffered;
  final Duration? total;
}
