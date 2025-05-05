import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

/// Widget raiz do aplicativo com rotas nomeadas
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

        // As etapas serão adicionadas aqui nas próximas fases
        // '/etapa01': (context) => const Etapa01(),
        // '/etapa02': (context) => const Etapa02(),
      },
    );
  }
}
