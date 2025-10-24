import 'package:flutter/material.dart';

import 'controller.dart';

class PulsanteVerifica extends StatefulWidget{
  final Controller controller;
  const PulsanteVerifica({super.key, required this.controller});

  @override
  State<StatefulWidget> createState() => PulsanteVerificaState();
}

class PulsanteVerificaState extends State<PulsanteVerifica>{

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: RawMaterialButton(
        onPressed: () => widget.controller.checkCombination(),
        fillColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        child: Icon(IconData(0xe1f6, fontFamily: 'MaterialIcons'), size: 28, color: Colors.white),
      ),
    );
  }
}