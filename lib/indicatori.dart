import 'package:flutter/material.dart';

import 'indicatore.dart';

class Indicatori extends StatefulWidget{
  const Indicatori({super.key});

  @override
  State<StatefulWidget> createState() => IndicatoriState();
}

class IndicatoriState extends State<Indicatori>{

  List<Color> listaColori = [Colors.transparent, Colors.transparent, Colors.transparent, Colors.transparent];

  void updateIndicatori(int correctColors, int semiColors){
    int index = 0;
    for(int i = index; i < correctColors; i++, index++){
      listaColori[i] = Colors.red;
    }
    for(int i = index; i < correctColors + semiColors; i++){
      listaColori[i] = Colors.blue;
    }

    setState(() {
      listaColori;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Indicatore> listaIndicatori = [];
    for(int i = 0; i < 4; i++){
      listaIndicatori.add(Indicatore(colore: listaColori[i]));
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            listaIndicatori[0],
            listaIndicatori[1],
          ],
        ),
        Row(
          children: [
            listaIndicatori[2],
            listaIndicatori[3],
          ],
        )
      ],
    );
  }
}