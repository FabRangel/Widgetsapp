import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          dialogFullScreen(context);
        },
        child: Icon(Icons.screen_rotation_alt_outlined),
      ),
      appBar: AppBar(title: const Text('Alert Page')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                customAlert(context);
              },
              child: Text('Show Alert'),
            ),
            ElevatedButton(
              onPressed: () {
                customAlert2(context);
              },
              child: const Text('Show Alert Dialog'),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> dialogFullScreen(BuildContext context) {
    return showDialog(
      context: context,
      builder:
          (BuildContext context) => Dialog.fullscreen(
            backgroundColor: const Color.fromARGB(255, 239, 246, 250),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Bienvenido a mi primera App de Flutter :) '),
                SizedBox(height: 20),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close, color: Colors.red[900], size: 30),
                ),
              ],
            ),
          ),
    );
  }

  Future<dynamic> customAlert(BuildContext context) {
    return showDialog(
      context: context,
      builder:
          (BuildContext context) => AlertDialog(
            title: Text('Alert Dialog'),
            content: Text(
              'Commodo proident occaecat amet enim velit nostrud esse Lorem veniam cupidatat quis.',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancelar'),
              ),
            ],
          ),
    );
  }
}

Future<dynamic> customAlert2(BuildContext context) {
  return showDialog(
    context: context,
    builder:
        (BuildContext context) => AlertDialog(
          backgroundColor: const Color.fromARGB(255, 244, 245, 246),
          title: Text('Alert Dialog 2'),
          content: Text(
            'Commodo proident occaecat amet enim velit nostrud esse Lorem veniam cupidatat quis.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Aceptar'),
            ),
          ],
        ),
  );
}
