import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: Text('Bienvenido a Mi Tarjeta de Presentación'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menú'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('CV'),
              onTap: () {
                Navigator.pushNamed(context, '/cv');
              },
            ),
            ListTile(
              title: Text('Portfolio'),
              onTap: () {
                Navigator.pushNamed(context, '/portfolio');
              },
            ),
            ListTile(
              title: Text('Aficiones'),
              onTap: () {
                Navigator.pushNamed(context, '/hobbies');
              },
            ),
          ],
        ),
      ),
    );
  }
}
