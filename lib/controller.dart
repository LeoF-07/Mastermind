import 'package:flutter/material.dart';
import 'package:mastermind/sequenza_segreta.dart';
import 'package:mastermind/sequenze.dart';

/// Controller che gestisce la logica di funzionamento del gioco
class Controller{
  final GlobalKey<SequenzeState> sequenzeStateKey;
  final GlobalKey<SequenzaSegretaState> sequenzaSegretaStateKey;
  Controller({required this.sequenzeStateKey, required this.sequenzaSegretaStateKey});

  int currentRow = 0;
  int currentCell = 0;

  bool gameEnded = false;

  List<MaterialColor> listaColori = [];
  late List<MaterialColor>? listaColoriDaIndovinare = sequenzaSegretaStateKey.currentState?.getColoriDaIndovinare();

  void addColour(MaterialColor colore){
    if(currentCell > 3 || gameEnded) return;
    sequenzeStateKey.currentState?.keysSequenzeState[currentRow].currentState?.keysColoriVuotiState[currentCell].currentState?.changeColour(colore);
    currentCell++;
    listaColori.add(colore);
  }

  
  List<MaterialColor> exactColors = [];


  int countCorrectColors(){
    int coloriUguali = 0;
    for(int i = 0; i < 4; i++){
      if(listaColoriDaIndovinare?[i] == listaColori[i]) {
        coloriUguali++;
        exactColors.add(listaColori[i]);
      }
    }
    return coloriUguali;
  }

  int countSemiColors(){
    int semiColors = 0;
    bool alreadyCounted = false;

    for(int i = 0; i < 4; i++){
      MaterialColor colore = listaColori[i];
      alreadyCounted = false;
      for(MaterialColor c in exactColors){
        if(colore == c){
          alreadyCounted = true;
        }
      }
      for(int j = 0; j < 4 && !alreadyCounted; j++){
        if(colore == listaColoriDaIndovinare?[j] && i != j) semiColors++;
      }
    }
    return semiColors;
  }

  void checkCombination(){
    if(currentCell != 4 || gameEnded) return;
    exactColors.clear();

    int correctColors = countCorrectColors();
    int semiColors = countSemiColors();

    sequenzeStateKey.currentState?.keysSequenzeState[currentRow].currentState?.keyIndicatoriState.currentState?.updateIndicatori(correctColors, semiColors);

    if(correctColors == 4){
      sequenzaSegretaStateKey.currentState?.makeVisible(true);
      gameEnded = true;
      return;
    }

    if(currentRow == 7){
      gameEnded = true;
      sequenzaSegretaStateKey.currentState?.makeVisible(false);
      return;
    }

    currentRow++;
    currentCell = 0;
    listaColori.clear();
  }

}