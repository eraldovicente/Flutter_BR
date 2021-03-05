import 'package:chat/chat_screen.dart';
import 'package:flutter/material.dart';

// import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  runApp(MyApp());

  // Firestore.instance
  //     .collection("mensagens")
  //     .document('4e7Av3juzK9n7C4dfskL')
  //     .snapshots()
  //     .listen((dado) {
  //   print(dado.data);
  // });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          iconTheme: IconThemeData(color: Colors.blue)),
      home: ChatScreen(),
    );
  }
}
