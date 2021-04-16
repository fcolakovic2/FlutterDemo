import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: 'qh-yxk-qAOc', //videoID.
          flags: YoutubePlayerFlags(
            hideControls: false, //ovo se ne bi trebalo ubrajati u stil
            controlsVisibleAtStart: true, //flagovi za postavke videa
            autoPlay: true,
            mute: true,
          ),
        ),
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.black,
      ),
    );
  }
}
