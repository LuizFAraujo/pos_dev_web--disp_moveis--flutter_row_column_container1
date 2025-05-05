import 'package:flutter/material.dart';

import '../widgets/navigation_bar_etapa.dart';

/// Etapa 03: Adiciona uma Column como filha do Container.
/// A Column é envolvida por cor clara para mostrar limites visuais.
class Etapa03ColumnChild extends StatelessWidget {
  const Etapa03ColumnChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etapa 03 - Column no Container'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(24),
        color:
            Colors.lightBlueAccent, // Cor de fundo do Container (base externa)
        // Column adicionada como filha do Container
        child: Column(
          // Padding interno na Column para separar do Container
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              color: Colors.blue[100], // Cor de fundo da Column (visualização)
              child: const Text(
                '→ Column adicionada aqui (ainda sem conteúdo)',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationBarEtapa(
        rotaAnterior: '/etapa02',
        rotaProxima: '/etapa04',
      ),
    );
  }
}
