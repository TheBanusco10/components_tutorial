import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  final String imageUrl;
  final String? text;

  const CustomCard2({super.key, required this.imageUrl, this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 20,
      shadowColor: Colors.redAccent.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageUrl)
          ),
          if (text != null) Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.all(10),
            child: Text(text!),
          )
        ],
      ),
    );
  }
}
