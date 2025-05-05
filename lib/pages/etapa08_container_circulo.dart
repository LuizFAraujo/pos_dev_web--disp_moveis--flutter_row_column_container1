import 'package:flutter/material.dart';

import '../widgets/navigation_bar_etapa.dart';

/// Etapa 08: Demonstra o uso de mainAxisAlignment e crossAxisAlignment
/// na Column e na Row, com efeito visual nos containers.
class Etapa08Alinhamentos extends StatelessWidget {
  const Etapa08Alinhamentos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etapa 08 - Alinhamentos com Axis'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(24),
        color: Colors.lightBlueAccent,

        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            // Aplicando alinhamentos conforme PDF
            mainAxisAlignment: MainAxisAlignment.center, // eixo vertical
            crossAxisAlignment: CrossAxisAlignment.start, // eixo horizontal

            children: [
              // Força a Column a ocupar largura total
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.transparent,
              ),

              // Três containers coloridos empilhados
              Container(width: 50, height: 50, color: Colors.red[200]),
              const SizedBox(height: 12),
              Container(width: 50, height: 50, color: Colors.green[200]),
              const SizedBox(height: 12),
              Container(width: 50, height: 50, color: Colors.blue[200]),
              const SizedBox(height: 20),

              // Row com alinhamento horizontal spaceBetween
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 50, height: 50, color: Colors.red[200]),
                  Container(width: 50, height: 50, color: Colors.green[200]),
                  Container(width: 50, height: 50, color: Colors.blue[200]),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBarEtapa(
        rotaAnterior: '/etapa07',
        rotaProxima: null, // Última etapa
      ),
    );
  }
}
