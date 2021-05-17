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
              //Aqui se crean 10 botones con la funcion crearTecla
              creaTecla(color: Colors.redAccent, nota: 1),
              creaTecla(color: Colors.green, nota: 2),
              creaTecla(color: Colors.lightBlue, nota: 3),
              creaTecla(color: Colors.red, nota: 4),
              creaTecla(color: Colors.yellow, nota: 5),
              creaTecla(color: Colors.deepPurpleAccent, nota: 6),
              creaTecla(color: Colors.lightGreen, nota: 7),
              creaTecla(color: Colors.blueAccent, nota: 8),
              creaTecla(color: Colors.lightGreenAccent, nota: 9),
              creaTecla(color: Colors.amber, nota: 10)
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

  Expanded creaTecla({Color color, int nota}){
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
