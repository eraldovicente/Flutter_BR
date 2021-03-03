import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  
  runApp(MyApp());
  Firestore.instance.collection("mensagens").document('vVP0G03IHIxoYhFLkyiO').collection('arquivos').document().setData({
    'arqname': 'foto.png'
  });

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Container(),
    );
  }
}