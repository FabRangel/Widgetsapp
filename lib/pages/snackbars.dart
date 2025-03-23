import 'package:flutter/material.dart';

class SnackPage extends StatelessWidget {
    const SnackPage({Key? key}) : super(key: key);

    void _showSnackBarSinAccion(BuildContext context) {
        final snackBar = SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        duration: Duration(seconds: 4),
        content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Expanded(child: Text('Este es un SnackBar sin acción')),
            GestureDetector(
                onTap: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
                child: Icon(Icons.close, color: Colors.white),
            ),
            ],
        ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

    void _showSnackBarConAccion(BuildContext context) {
        final snackBar = SnackBar(
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            duration: Duration(seconds: 4),
            content: Row(
            children: [
                Expanded(child: Text('Este es un SnackBar con acción')),
                GestureDetector(
                    onTap: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
                    child: Icon(Icons.close, color: Colors.white),
                ),
            ],
        ),
        action: SnackBarAction(
        label: 'DESHACER',
        textColor: Colors.yellow,
            onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                ),
                content: Text('Acción deshecha'),
                duration: Duration(seconds: 2),
                ),
            );
            },
        ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

@override
Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('SnackBars en Flutter')),
    body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                ElevatedButton(
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 255, 161, 192),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                onPressed: () => _showSnackBarSinAccion(context),
                child: Text('Mostrar SnackBar sin acción'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 203, 154, 249),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () => _showSnackBarConAccion(context),
                    child: Text('Mostrar SnackBar con acción'),
                    ),
                ],
                ),
            ),
        ],
        ),
    );
    }
}
