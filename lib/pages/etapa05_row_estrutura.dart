import 'package:flutter/material.dart';

import '../widgets/navigation_bar_etapa.dart';

/// Etapa 05: Insere uma Row dentro da Column, com indicador visual.
/// O Container colorido dentro da Row serve apenas para mostrar sua presença.
class Etapa05RowDentroColumn extends StatelessWidget {
  const Etapa05RowDentroColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etapa 05 - Inserção de Row na Column'),
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
              // Garante largura total
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.transparent,
              ),

              // Containers coloridos (como na etapa 04)
              Container(width: 50, height: 50, color: Colors.red[200]),
              const SizedBox(height: 12),
              Container(width: 50, height: 50, color: Colors.green[200]),
              const SizedBox(height: 12),
              Container(width: 50, height: 50, color: Colors.blue[200]),
              const SizedBox(height: 20),

              // Row com Container interno visível
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
      bottomNavigationBar: const NavigationBarEtapa(
        rotaAnterior: '/etapa04',
        rotaProxima: '/etapa06',
      ),
    );
  }
}
