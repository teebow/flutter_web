import 'package:flutter_web/material.dart';

class ActionButton extends StatelessWidget {
  ActionButton({@required this.onPressed, @required this.label});
  final GestureTapCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 5,
      onPressed: onPressed,
      textColor: Color(0xFF1E1E1E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      padding: const EdgeInsets.all(0.0),
      child: Ink(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.0, 0.5, 1.0],
            colors: <Color>[
              Color(0xFFF75900),
              Color(0xFFF7B500),
              Color(0xFFFAFF00),
            ], /*colors: <Color>[
              Color(0xFF05FF00),
              Color(0xFF00FF85),
              Color(0xFF00FFC2),
            ],*/
          ),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: Container(
          constraints: BoxConstraints.expand(height: 43.0, width: 205),
          alignment: Alignment.center,
          child: Text(
            label.toUpperCase(),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
