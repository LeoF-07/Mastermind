# Mastermind

Mastermind Mobile.
Hai a disposizione 8 tentativi per indovinare una sequenza segreta di 4 colori. Scegli i colori dalla colonna
a destra e premi il pulsante nero con la spunta per verificare la sequenza. I 4 cerchietti a destra dei tentativi sono degli indicatori che
ti guideranno alla vittoria. Una volta premuto il pulsante verifica, essi si riempiranno di rosso in base a quanti
colori hai indovinato e sono nella posizione giusta, mentre di blu se non sono nella posizione giusta.
Finita la partita, puoi iniziarne una nuova premendo sul pulsante verde in basso a destra.

![Esempio](screenshots/example.jpg)

## Scelte di sviluppo
Il codice del progetto è suddiviso in numerose classi in modo da aumentarne la leggibilità.

I colori che comporranno le sequenze tentate vengono scelti dall'utente dall'apposita colonna verticale
di colori a destra. Questo rende l'insieme di colori più facilmente visualizzabile e più rapida la loro selezione
La logica di funzionamento è gestita dall'apposita classe Controller in modo da separarla al meglio dalle componenti grafiche
e dal codice per gestirle.

## Requisiti
- Flutter SDK
- Android Studio

L'ambiente deve essere configurato correttamente, il seguente comando da digitare sul prompt dei comandi fornirà indicazioni sullo stato configurazione:
```bash
flutter doctor
```

## Download

Questa applicazione funziona per i dispositivi Android.
È possibile scaricare questo progetto selezionando il percorso desiderato dal prompt dei comandi e digitando:
```bash
git clone https://github.com/LeoF-07/Mastermind.git
```

Se i [requisiti](#Requisiti) sono rispettati sarà possibile modificare il progetto con Android Studio o Visual Studio Code
ed emularlo.

Per generare l'apk è sufficiente questo comando da digitare nel prompt dei comandi all'interno della cartella del progetto:
```bash
flutter build apk --release
```
Può essere anche scaricato direttamente dal Menù di Android Studio nella sezione Build.

Trasferendo l'apk su un dispositivo Android potrà essere scaricato e l'applicazione sarà pronta all'uso.


## Autore
Leonardo Fortin
