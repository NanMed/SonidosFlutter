import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Hope extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    print("Entro");
    return MaterialApp(
      title: "Hope: starwars sonidos app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //Aqui se crean 10 botones con la funcion creTecla
              creaTecla(Colors.redAccent, 1),
              creaTecla(Colors.green, 2),
              creaTecla(Colors.lightBlue, 3),
              creaTecla(Colors.red, 4),
              creaTecla(Colors.yellow, 5),
              creaTecla(Colors.deepPurpleAccent, 6),
              creaTecla(Colors.lightGreen, 7),
              creaTecla(Colors.blueAccent, 8),
              creaTecla(Colors.lightGreenAccent, 9),
              creaTecla(Colors.amber, 10)
            ],
          ),
        ),
      ),
    );
  }
  
  void teclaSound(int nota){
    final audioPlayer = AudioCache();
    audioPlayer.play('sound$nota.mp3');
  }

  Expanded creaTecla(Color color, int nota){
    return Expanded(
        child: FlatButton(
          onPressed: (){
            teclaSound(nota);
          },
          color: color,
        ),
    );
  }
}

void main() {
  runApp(Hope());
}
