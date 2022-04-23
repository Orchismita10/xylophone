import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void sound(int n){
    final player= AudioCache();
    player.play('note$n.wav');
  }

  Expanded button({required Color color, required int n}){
    return Expanded(
      child: GestureDetector(
        onTap: (){
          sound(n);
        },
        child: Container(
          child: const Text(
            "Click me",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          color: color,
          alignment: Alignment.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              button(color: Colors.red, n: 1),
              button(color: Colors.orange, n: 2),
              button(color: Colors.yellow, n: 3),
              button(color: Colors.green, n: 4),
              button(color: Colors.teal, n: 5),
              button(color: Colors.purple, n: 6),
            ],
          )
        ),
      )
    );
  }
}
