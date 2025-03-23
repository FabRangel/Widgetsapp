import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons Page'),
       
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Wrap(
          spacing: 100,
          runSpacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {
                print('Botón presionado');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 143, 117, 171),
                foregroundColor: Colors.white,
              ),
              child: const Text('Elevated Button'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Botón presionado');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 143, 117, 171),
                foregroundColor: Colors.white,
              ),
              child: 
               
                  Icon(Icons.bug_report, color: Colors.white),
                  
              
            ),
            OutlinedButton(
              onPressed: () {},
              
              child: const Text('Outlined Button'),
              
              //child: const Center(child: Text('Outlined Button')),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.donut_large),
              color: Color.fromARGB(255, 143, 117, 171),
            ),
            TextButton(onPressed: () {}, child: const Text('Text Button')),
            
            DropdownButton<String>(
              value: 'Opcion 1',
              items: [
                DropdownMenuItem(child: Text('Opcion 1'), value: 'Opcion 1'),
                DropdownMenuItem(child: Text('Opcion 2'), value: 'Opcion 2'),
              ],
              onChanged: (value) {},
            ),
            PopupMenuButton<String>(
              onSelected: (value) {},
              itemBuilder: (BuildContext context) {
                return ['Opcion 1', 'Opcion 2'].map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
        ),
      ),
    );
  }
}
