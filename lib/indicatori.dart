import 'package:flutter/material.dart';

import 'indicatore.dart';

class Indicatori extends StatefulWidget{
  const Indicatori({super.key});

  @override
  State<StatefulWidget> createState() => IndicatoriState();
}

class IndicatoriState extends State<Indicatori>{
  @override
  Widget build(BuildContext context) {
    List<Indicatore> listaIndicatori = [];
    for(int i = 0; i < 4; i++){
      listaIndicatori.add(Indicatore());
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Indicatore(),
            Indicatore()
          ],
        ),
        Row(
          children: [
            Indicatore(),
            Indicatore()
          ],
        )
      ],
    );
  }
}