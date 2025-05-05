import 'package:flutter/material.dart';

import '../widgets/navigation_bar_etapa.dart';

/// Etapa 01: Criação de um Container básico com cor de fundo,
/// sem margens nem elementos adicionais.
/// Essa tela representa a base inicial de qualquer layout Flutter.
class Etapa01ContainerBase extends StatelessWidget {
  const Etapa01ContainerBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar com título centralizado da etapa
      appBar: AppBar(
        title: const Text('Etapa 01 - Container Base'),
        centerTitle: true,
      ),

      // Corpo da tela exibindo apenas o Container preenchido
      body: Container(
        // O Container ocupa toda a área disponível (exceto a AppBar)
        color: Colors.lightBlueAccent, // Cor de fundo para visualização clara
      ),

      // Navegação inferior com botões Home e Próxima Etapa
      bottomNavigationBar: const NavigationBarEtapa(
        rotaProxima: '/etapa02', // Define o botão "Próxima"
        // Sem botão "Anterior" pois esta é a primeira etapa
      ),
    );
  }
}
