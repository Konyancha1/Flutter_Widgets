import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'My First App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatelessWidget(),
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Row(children: [
        RotatedBox(
          quarterTurns: 3,
          child: Text('HUMMING BIRD' ,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.blueAccent))),

        FittedBox(fit: BoxFit.fitHeight,
        child:
        Image.network(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
          'A hummingbird is a small bird with iridescent feathers\n and the ability to hover in mid-air \nby rapidly flapping their wings\n They are native to the Americas \nand feed on nectar, insects, and spiders.\nMales (and occasionally females) often have a colorful gorget—small,\n stiff, highly reflective, colored feathers on the\n throat and upper chest. These shiny feathers and others\n around the head may look sooty black until a \nhummingbird turns its head to catch the sun and\n display the intense, metallic spectral color.\n IS THIS REALLY A HUMMINGBIRD THOUGH?' ,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blueGrey)),

          Row(children: [
            Icon(
            Icons.favorite,
            color: Colors.lightBlue
            ),   
            Icon(
              Icons.audiotrack,
              color: Colors.amber,
            ),
            Icon(
              Icons.thumb_up,
              color: Colors.deepOrange
            ),


          ]),
        ]),

      ]),
      
    );
  }
}
