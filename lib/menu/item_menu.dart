import 'package:flutter/material.dart';

class ItemMenu {
  final String title;
  final String subtitle;
  final String route;
  final IconData icono;

  ItemMenu({
    required this.title,
    required this.subtitle,
    required this.route,
    required this.icono,
  });
}

final menu = <ItemMenu>[
  ItemMenu(
    title: 'Buttons',
    subtitle: 'Lista de Buttons',
    route: '/buttons',
    icono: Icons.bubble_chart,
  ),
  ItemMenu(
    title: 'Cards',
    subtitle: 'Lista de Cards',
    route: '/cards',
    icono: Icons.card_giftcard,
  ),
  ItemMenu(
    title: 'Alerts',
    subtitle: 'Tipos de alerts',
    route: '/alerts',
    icono: Icons.warning,
  ),
  ItemMenu(
    title: 'SnackBars',
    subtitle: 'Tipos de snacks',
    route: '/snack',
    icono: Icons.fastfood,
  ),
];
