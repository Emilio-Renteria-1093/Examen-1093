import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

       appBar: AppBar(
        title: const Text('Emilio Renteria 22308051281093 '),
          titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
      ),

        body: TeamList(),
      ),
    );
  }
}

class TeamList extends StatelessWidget {
  final List<Map<String, dynamic>> teams = [
    {
      'title': 'Equipo A',
      'members': [
        {'name': 'Juan Fenrnandez', 'initials': 'JF', 'color': Colors.blue},
        {'name': 'Emiliano Guerrero', 'initials': 'EG', 'color': const Color.fromARGB(255, 255, 0, 0)},
        {'name': 'Emmanuel Salcido ', 'initials': 'EC', 'color': Colors.blueGrey},
      ]
    },
    {
      'title': 'Equipo B',
      'members': [
        {'name': 'Dante Hierro', 'initials': 'DH', 'color': Colors.green},
        {'name': 'Johana Mora', 'initials': 'JM', 'color': const Color.fromARGB(255, 220, 29, 245)},
      ]
    },
    {
      'title': 'Equipo C',
      'members': [
        {'name': 'Emilio Renteria', 'initials': 'ER', 'color': const Color.fromARGB(255, 56, 49, 39)},
        {'name': 'Fernando Pino', 'initials': 'FP', 'color': const Color.fromARGB(255, 111, 97, 134)},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: teams.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                teams[index]['title'],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ...teams[index]['members'].map<Widget>((member) {
              return Card(
                margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: member['color'],
                    child: Text(
                      member['initials'],
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  title: Text(member['name']),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                ),
              );
            }).toList(),
          ],
        );
      },
    );
  }
}
