import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Expanded _buildKey({required Color color, required int num}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(0),
        ),
        onPressed: () {
          play(num);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  void play(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildKey(color: Colors.red, num: 1),
              _buildKey(color: Colors.orange, num: 2),
              _buildKey(color: Colors.yellow, num: 3),
              _buildKey(color: Colors.green, num: 4),
              _buildKey(color: Colors.blue, num: 5),
            ],
          ),
        ),
      ),
    );
  }
}
