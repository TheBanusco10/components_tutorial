import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 5,
            title: Text('Alert title'),
            content: Text('This is the content of the alert'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Cancel'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () => displayDialog(context),
              child: const Text('Show alert', style: TextStyle(fontSize: 17)))),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close_outlined),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
