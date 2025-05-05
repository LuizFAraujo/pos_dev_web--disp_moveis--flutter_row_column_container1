import 'package:flutter/material.dart';

import 'home_page.dart';
import 'pages/etapa01_container_base.dart';
import 'pages/etapa02_container_margin.dart';

void main() {
  runApp(const MyApp());
}

/// Widget principal que configura o MaterialApp e define rotas do app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explorando Widgets',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/etapa01': (context) => const Etapa01ContainerBase(),
        '/etapa02': (context) => const Etapa02ContainerMargin(),
      },
    );
  }
}
