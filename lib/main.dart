import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Estrutura base com MaterialApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// HomePage básica com Scaffold
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // A próxima etapa será implementar o body
      body: Center(
        child: Text('Tela inicial pronta', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
