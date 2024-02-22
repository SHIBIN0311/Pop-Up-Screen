import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('POPUP SCREEN'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showPopupScreen(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          child: const Text(
            'Click here',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

void showPopupScreen(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Pop-up Screen'),
        content: const Text('Welcome Buddy'),
        actions: [
          ElevatedButton(
            onPressed: () {
               Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: const Text(
              'Close',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      );
    },
  );
}
