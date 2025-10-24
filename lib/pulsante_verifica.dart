import 'package:flutter/material.dart';

class PulsanteVerifica extends StatefulWidget{
  const PulsanteVerifica({super.key});

  @override
  State<StatefulWidget> createState() => PulsanteVerificaState();
}

class PulsanteVerificaState extends State<PulsanteVerifica>{

  void doSomething(){

  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: RawMaterialButton(
        onPressed: doSomething,
        fillColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        child: Icon(IconData(0xe1f6, fontFamily: 'MaterialIcons'), size: 28, color: Colors.white),
      ),
    );
  }
}