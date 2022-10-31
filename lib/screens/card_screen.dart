import 'package:components_tutorial/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Screen'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCard(),
            SizedBox(height: 30),
            CustomCard2(
              imageUrl: 'https://images.wallpapersden.com/image/download/batman-with-vignette_bWdqaGWUmZqaraWkpJRnamtlrWZpaWU.jpg',
              text: 'Batman forever',
            ),
            SizedBox(height: 30),
            CustomCard2(
              imageUrl: 'https://images.wallpapersden.com/image/download/batman-with-vignette_bWdqaGWUmZqaraWkpJRnamtlrWZpaWU.jpg',
              text: 'Batman forever',
            ),
            SizedBox(height: 30),
            CustomCard2(
              imageUrl: 'https://images.wallpapersden.com/image/download/batman-with-vignette_bWdqaGWUmZqaraWkpJRnamtlrWZpaWU.jpg',
            ),
          ],
        ));
  }
}
