import 'package:audioplayers/audioplayers.dart';

AudioPlayer? player;  // this variable to stop Audio
// AudioCache fro music
final AudioCache _audioCache = AudioCache(
  prefix: 'assets/audio/',
  fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
);

// AudioCache play
void playFile(String audio) async {
  player = await _audioCache.loop(audio); // assign player here

}
// AudioCache stop
void stopFile() {
  player!.stop(); // stop the file like this
}


