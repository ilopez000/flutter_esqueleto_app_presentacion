import 'package:flutter/material.dart';

class PortfolioScreen extends StatelessWidget {
  final List<Map<String, String>> portfolioItems = [
    {
      "title": "Proyecto 1",
      "description": "Descripción del Proyecto 1.",
      "imageUrl": "https://example.com/image1.jpg",
    },
    {
      "title": "Proyecto 2",
      "description": "Descripción del Proyecto 2.",
      "imageUrl": "https://example.com/image2.jpg",
    },
    // Añade más proyectos según sea necesario
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
      ),
      body: ListView.builder(
        itemCount: portfolioItems.length,
        itemBuilder: (context, index) {
          var item = portfolioItems[index];
          return ListTile(
            leading: Image.network(item["imageUrl"]!, width: 100, height: 100, fit: BoxFit.cover),
            title: Text(item["title"]!),
            subtitle: Text(item["description"]!),
            onTap: () {
              // Aquí puedes implementar una acción al tocar cada elemento, como navegar a una pantalla detallada
            },
          );
        },
      ),
    );
  }
}
