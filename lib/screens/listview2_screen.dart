import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({super.key});

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
          title: const Text('Listview2'),
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(heroes[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 30,
                    color: Colors.indigo,
                  ),
                  onTap: () {
                    final hero = heroes[index];
                    print(hero);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: heroes.length));
  }
}
