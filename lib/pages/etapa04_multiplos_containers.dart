import 'package:flutter/material.dart';

import '../widgets/navigation_bar_etapa.dart';

/// Etapa 04: Exibe três containers coloridos centralizados verticalmente,
/// com espaçamento entre eles e alinhamento lateral simétrico.
class Etapa04MultiplosContainers extends StatelessWidget {
  const Etapa04MultiplosContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etapa 04 - Múltiplos Containers na Column'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(24),
        color: Colors.lightBlueAccent, // Container externo

        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Força expansão horizontal da Column
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.transparent,
              ),

              // Quadrado vermelho
              Container(width: 50, height: 50, color: Colors.red[200]),
              const SizedBox(height: 12),

              // Quadrado verde
              Container(width: 50, height: 50, color: Colors.green[200]),
              const SizedBox(height: 12),

              // Quadrado azul
              Container(width: 50, height: 50, color: Colors.blue[200]),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBarEtapa(
        rotaAnterior: '/etapa03',
        rotaProxima: '/etapa05',
      ),
    );
  }
}
