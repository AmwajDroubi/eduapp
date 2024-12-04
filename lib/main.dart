import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SoundPlayer(),
    );
  }
}

class SoundPlayer extends StatefulWidget {
  @override
  _SoundPlayerState createState() => _SoundPlayerState();
}

class _SoundPlayerState extends State<SoundPlayer> {
  AudioPlayer audioPlayer = AudioPlayer();

  void playSound() async {
    int result = await audioPlayer.play('assets/cat.mp3', isLocal: true);
    if (result == 1) {
      // success
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sound Player'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: playSound,
          child: Text('Play Sound'),
        ),
      ),
    );
  }
}
