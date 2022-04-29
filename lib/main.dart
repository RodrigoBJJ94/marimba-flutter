import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  void playMusic(int? notes) {
    final player = AudioCache();
    player.play('Note$notes.wav');
  }

  Expanded createButton({int? note, Color? color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playMusic(note);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
        ),
        child: const Text(
          '',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 0,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              createButton(note: 1, color: Colors.teal[900]),
              createButton(note: 2, color: Colors.deepPurple[800]),
              createButton(note: 3, color: Colors.blue[900]),
              createButton(note: 4, color: Colors.yellow[600]),
              createButton(note: 5, color: Colors.deepOrange[700]),
              createButton(note: 6, color: Colors.red[900]),
              createButton(note: 7, color: Colors.brown[800]),
            ],
          ),
        ),
      ),
    );
  }
}
