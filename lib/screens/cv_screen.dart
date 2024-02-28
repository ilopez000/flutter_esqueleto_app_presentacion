import 'package:flutter/material.dart';

class CvScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi CV'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Experiencia Laboral',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // Añade aquí tu experiencia laboral
              ExperienceItem(
                title: 'Desarrollador de Software',
                company: 'Empresa XYZ',
                duration: 'Enero 2020 - Presente',
                description: 'Descripción detallada de tus responsabilidades y logros.',
              ),
              SizedBox(height: 20),
              Text(
                'Educación',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // Añade aquí tu educación
              EducationItem(
                degree: 'Ingeniería en Informática',
                institution: 'Universidad ABC',
                duration: '2015 - 2019',
              ),
              // Continúa añadiendo más secciones según necesites
            ],
          ),
        ),
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String title;
  final String company;
  final String duration;
  final String description;

  const ExperienceItem({
    Key? key,
    required this.title,
    required this.company,
    required this.duration,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(company),
        Text(duration),
        Text(description),
        SizedBox(height: 10),
      ],
    );
  }
}

class EducationItem extends StatelessWidget {
  final String degree;
  final String institution;
  final String duration;

  const EducationItem({
    Key? key,
    required this.degree,
    required this.institution,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          degree,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(institution),
        Text(duration),
        SizedBox(height: 10),
      ],
    );
  }
}
