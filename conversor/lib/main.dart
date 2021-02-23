import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const request =
    "https://api.hgbrasil.com/finance?format=json-cors&key=27417872";

void main() async {
  print(await getData());

  runApp(MaterialApp(
      home: Home(),
      theme: ThemeData(
          hintColor: Colors.white,
          inputDecorationTheme: InputDecorationTheme(
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          ))));
}

Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body);
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double dolar;
  double euro;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text("\$ Conversor \$"),
          backgroundColor: Colors.amber,
          centerTitle: true),
      body: FutureBuilder<Map>(
          future: getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(
                    child: Text(
                  "Carregando dados...",
                  style: TextStyle(color: Colors.amber, fontSize: 25.0),
                ));
              default:
                if (snapshot.hasError) {
                  return Center(
                      child: Text(
                    "Erro ao carregar dados :(",
                    style: TextStyle(color: Colors.amber, fontSize: 25.0),
                  ));
                } else {
                  dolar = snapshot.data["results"]["currencies"]["USD"]["buy"];
                  euro = snapshot.data["results"]["currencies"]["EUR"]["buy"];

                  return SingleChildScrollView(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(Icons.monetization_on,
                          size: 150.0, color: Colors.amber),
                      TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).hintColor)),
                            labelText: "Reais",
                            labelStyle: TextStyle(color: Colors.amber),
                            border: OutlineInputBorder(),
                            prefixText: "R\$ "),
                        style: TextStyle(color: Colors.amber, fontSize: 25.0),
                      ),
                      Divider(),
                      TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).hintColor)),
                            labelText: "Dolares",
                            labelStyle: TextStyle(color: Colors.amber),
                            border: OutlineInputBorder(),
                            prefixText: "US\$ "),
                        style: TextStyle(color: Colors.amber, fontSize: 25.0),
                      ),
                      Divider(),
                      TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).hintColor)),
                            labelText: "Euros",
                            labelStyle: TextStyle(color: Colors.amber),
                            border: OutlineInputBorder(),
                            prefixText: "€\$ "),
                        style: TextStyle(color: Colors.amber, fontSize: 25.0),
                      ),
                    ],
                  ));
                }
            }
          }),
    );
  }
}
