import 'package:flutter/material.dart';

import '../widgets/navigation_bar_etapa.dart';

/// Etapa 02: Adiciona margem ao Container principal para afastá-lo das bordas da tela.
/// Utiliza EdgeInsets.all para margem uniforme em todos os lados.
class Etapa02ContainerMargin extends StatelessWidget {
  const Etapa02ContainerMargin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etapa 02 - Container com Margin'),
        centerTitle: true,
      ),
      body: Container(
        // Cor de fundo visível para delimitar área do Container
        color: Colors.lightBlueAccent,

        // Margem aplicada externamente (afasta o container das bordas)
        margin: const EdgeInsets.all(24),
      ),
      bottomNavigationBar: const NavigationBarEtapa(
        rotaAnterior: '/etapa01',
        rotaProxima: '/etapa03',
      ),
    );
  }
}
