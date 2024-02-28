import 'package:flutter/material.dart';

class HobbiesScreen extends StatelessWidget {
  final List<String> hobbies = [
    "Leer",
    "Escribir código",
    "Hacer senderismo",
    "Viajar",
    "Jugar videojuegos",
    // Añade más aficiones según sea necesario
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aficiones'),
      ),
      body: ListView.builder(
        itemCount: hobbies.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.favorite_outline),
              title: Text(hobbies[index]),
              onTap: () {
                // Aquí puedes implementar una acción al tocar cada elemento, como mostrar detalles sobre la afición
              },
            ),
          );
        },
      ),
    );
  }
}
