import 'dart:math';

import 'package:flutter/material.dart';

import 'package:mastermind/controller.dart';
import 'package:mastermind/pulsante_verifica.dart';
import 'package:mastermind/sequenza_segreta.dart';
import 'package:mastermind/sequenze.dart';
import 'package:mastermind/colonna_colori.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Mastermind'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Key key = UniqueKey();

  List<MaterialColor> listaColori = [Colors.red, Colors.orange, Colors.blue, Colors.green, Colors.yellow, Colors.purple];
  List<MaterialColor> listaColoriDaIndovinare = [];

  void generaSequenzaSegreta(){
    List<MaterialColor> copia = List.from(listaColori);
    listaColoriDaIndovinare = [];
    for(int i = 0; i < 4; i++){
      int i = Random().nextInt(copia.length);
      listaColoriDaIndovinare.add(copia[i]);
      copia.removeAt(i);
    }
  }

  void restart(){
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<SequenzeState> sequenzeStateKey = GlobalKey<SequenzeState>();
    final GlobalKey<SequenzaSegretaState> sequenzaSegretaStateKey = GlobalKey<SequenzaSegretaState>();

    Controller controller = Controller(sequenzeStateKey: sequenzeStateKey, sequenzaSegretaStateKey: sequenzaSegretaStateKey);


    generaSequenzaSegreta();


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          key: key,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(bottom: 40), child: SequenzaSegreta(key: sequenzaSegretaStateKey, listaColoriDaIndovinare: listaColoriDaIndovinare)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(right: 20), child: Sequenze(key: sequenzeStateKey)),
                Column(
                  children: [
                    ColonnaColori(listaColori: listaColori, controller: controller),
                    Padding(padding: EdgeInsets.only(top: 20), child: PulsanteVerifica(controller: controller))
                  ]
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: restart,
        tooltip: 'Increment',
        child: const Icon(IconData(0xe523, fontFamily: 'MaterialIcons')),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
