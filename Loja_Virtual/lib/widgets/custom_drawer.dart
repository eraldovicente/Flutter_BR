import 'package:flutter/material.dart';

import 'package:Loja_Virtual/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 211, 118, 130), Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        );

    return Drawer(
        child: Stack(
      children: [
        _buildDrawerBack(),
        ListView(
          padding: EdgeInsets.only(left: 32.0, top: 16.0),
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 8.0),
              padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
              height: 170.0,
              child: Stack(
                children: [
                  Positioned(
                    top: 8.0,
                    left: 0.0,
                    child: Text(
                      "Flutter's\nClothing",
                      style: TextStyle(
                          fontSize: 34.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Olá, ',
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            GestureDetector(
                              child: Text("Entre ou cadastre-se >",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                                      onTap: () {
                                        
                                      },
                            )
                          ]))
                ],
              ),
            ),
            Divider(),
            DrawerTile(Icons.home, "Início"),
            DrawerTile(Icons.list, "Produtos"),
            DrawerTile(Icons.location_on, "Lojas"),
            DrawerTile(Icons.playlist_add_check, "Meus Pedidos"),
          ],
        )
      ],
    ));
  }
}
