import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Components in Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(
                Icons.home
              ),
              title: const Text('Route name'),
              onTap: () {
                Navigator.pushNamed(context, 'listview1');
              },
            ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 10)
    );
  }
}
