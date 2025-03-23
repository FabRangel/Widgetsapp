import 'package:flutter/material.dart';
import 'package:widgets_app/menu/item_menu.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Widgets'),
       
      ),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, index) {
          return CustomListTile(menu:menu[index]);
        },
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.menu
  });

  final ItemMenu menu;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(menu.icono),
      trailing: const  Icon(Icons.arrow_forward_ios),
      title: Text(menu.title),
      subtitle: Text(menu.subtitle),
      onTap: () {
        Navigator.pushNamed(context, menu.route);
      },
    );
  }
}
