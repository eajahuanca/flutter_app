import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'StatefulWidget',
        home: Scaffold(
            appBar: AppBar(
              title: Text('StatefulWidget'),
            ),
            body: Center(child: PlayerWidget())));
  }
}

class PlayerWidget extends StatefulWidget {
  @override
  State<PlayerWidget> createState() {
    return new PlayerWidgetState();
  }
}

class PlayerWidgetState extends State<PlayerWidget> {
  bool isPlaying = false;

  void playerClick() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.lightBlueAccent,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
                icon: isPlaying ? Icon(Icons.pause) : Icon(Icons.play_arrow),
                iconSize: 150.0,
                onPressed: () {
                  playerClick();
                }),
            Text(
              isPlaying ? 'Pause' : 'Play',
              style: new TextStyle(fontSize: 24.0),
            )
          ],
        ));
  }
}
