import 'package:flutter/material.dart';

/// ColoreIgnoto della SequenzaSegreta. La sua visibilià rimane a false finché non si vince o si perde
class ColoreIgnoto extends StatefulWidget{
  final MaterialColor colore;
  final bool visible;
  final bool win;
  const ColoreIgnoto({super.key, required this.colore, required this.visible, required this.win});

  @override
  State<StatefulWidget> createState() => ColoreIgnotoState();
}

class ColoreIgnotoState extends State<ColoreIgnoto>{
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(2),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: 2),
            color: widget.visible ? widget.colore : Colors.transparent,
          ),
          child: ClipOval(
            child: Center(
              //child: Text(widget.visible ? '' : '?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              child: Icon(widget.visible ? (widget.win ? const IconData(0xe1f6, fontFamily: 'MaterialIcons') : const IconData(0xe168, fontFamily: 'MaterialIcons')) : const IconData(0xf0555, fontFamily: 'MaterialIcons'))
            ),
          ),
        )
    );
  }
}