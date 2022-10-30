import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('Test title', style: TextStyle(fontSize: 40)),
            subtitle: Text('Lorem ipsumLorem ipsumLorem ipsumm Lorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsum', style: TextStyle(fontSize: 20)),
            leading: Icon(Icons.add),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text('See more', style: TextStyle(fontSize: 20))
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
