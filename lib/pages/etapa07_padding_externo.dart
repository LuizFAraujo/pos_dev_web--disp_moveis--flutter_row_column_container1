import 'package:flutter/material.dart';

import '../widgets/navigation_bar_etapa.dart';

/// Etapa 07: Adiciona os três quadrados coloridos dentro da Row
/// para demonstrar o layout horizontal.
class Etapa07ConteudoNaRow extends StatelessWidget {
  const Etapa07ConteudoNaRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etapa 07 - Conteúdo dentro da Row'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(24),
        color: Colors.lightBlueAccent,

        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Garante expansão horizontal
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.transparent,
              ),

              // Três quadrados coloridos (na vertical, como antes)
              Container(width: 50, height: 50, color: Colors.red[200]),
              const SizedBox(height: 12),
              Container(width: 50, height: 50, color: Colors.green[200]),
              const SizedBox(height: 12),
              Container(width: 50, height: 50, color: Colors.blue[200]),
              const SizedBox(height: 20),

              // Row com os três containers lado a lado
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 50, height: 50, color: Colors.red[200]),
                  const SizedBox(width: 12),
                  Container(width: 50, height: 50, color: Colors.green[200]),
                  const SizedBox(width: 12),
                  Container(width: 50, height: 50, color: Colors.blue[200]),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBarEtapa(
        rotaAnterior: '/etapa06',
        rotaProxima: '/etapa08',
      ),
    );
  }
}
