import 'package:flutter/material.dart';

/// Página inicial com título e navegação para as etapas
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explorando Widgets'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Container | Row | Column',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ...List.generate(8, (index) {
              final etapa = (index + 1).toString().padLeft(2, '0');
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/etapa$etapa');
                  },
                  child: Text('Etapa $etapa'),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
