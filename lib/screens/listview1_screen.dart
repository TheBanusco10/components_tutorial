import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({super.key});

  final heroes = const [
    'Iron Man',
    'Capitan America',
    'Black Widow',
    'Ant man'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview1'),
      ),
      body: ListView(
        children: [
          ...heroes
              .map((hero) => ListTile(
                    title: Text(hero),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 30,
                    ),
                  ))
              .toList()
        ],
      ),
    );
  }
}
