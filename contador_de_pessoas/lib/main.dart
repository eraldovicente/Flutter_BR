import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ 
        Text("Pessoas: 0", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.none, fontSize: 40.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () {}, 
              child: Text(
                "+1", 
                style: TextStyle(
                  fontSize: 40.0, 
                  color: Colors.white)
              )),
            FlatButton(
              onPressed: () {}, 
              child: Text(
                "-1", 
                style: TextStyle(
                  fontSize: 40.0, 
                  color: Colors.white)
              )),
          ],
        ),
        Text("Pode entrar!", 
          style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold, 
            decoration: TextDecoration.none,
            fontStyle: FontStyle.italic,
            fontSize: 30.0
          )),
      ],
    )
  ));
}