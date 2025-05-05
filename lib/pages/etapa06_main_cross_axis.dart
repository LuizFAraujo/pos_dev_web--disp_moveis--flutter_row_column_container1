import 'package:flutter/material.dart';

/// Etapa 06: Simula um MaterialApp local onde o Container é usado como `home`.
/// Essa estrutura recria a organização básica de um app Flutter, de forma isolada.
class Etapa06RefatorarComMaterialApp extends StatelessWidget {
  const Etapa06RefatorarComMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove o banner de debug
      // A tela principal do app é o Container abaixo
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Etapa 06 - Reorganização com MaterialApp'),
          centerTitle: true,
          leading: BackButton(onPressed: () => Navigator.pop(context)),
        ),
        body: Container(
          margin: const EdgeInsets.all(24),
          color: Colors.lightBlueAccent,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Expansão horizontal
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.transparent,
                ),

                // Três quadrados coloridos
                Container(width: 50, height: 50, color: Colors.red[200]),
                const SizedBox(height: 12),
                Container(width: 50, height: 50, color: Colors.green[200]),
                const SizedBox(height: 12),
                Container(width: 50, height: 50, color: Colors.blue[200]),
                const SizedBox(height: 20),

                // Row visível
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 40,
                      color: Colors.green[100],
                      alignment: Alignment.center,
                      child: const Text('← Row aqui'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
