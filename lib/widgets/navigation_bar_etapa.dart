import 'package:flutter/material.dart';

/// Widget reutilizável de navegação entre etapas do app.
/// Exibe botões de:
/// - Anterior (se fornecido)
/// - Home (sempre)
/// - Próxima (se fornecido)
class NavigationBarEtapa extends StatelessWidget {
  final String? rotaAnterior;
  final String? rotaProxima;

  const NavigationBarEtapa({super.key, this.rotaAnterior, this.rotaProxima});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// Botão "Anterior" (só aparece se a rota for informada)
            if (rotaAnterior != null)
              ElevatedButton.icon(
                onPressed: () => Navigator.pushNamed(context, rotaAnterior!),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Anterior'),
              )
            else
              const SizedBox(width: 100), // Mantém alinhamento
            /// Botão "Home" (sempre presente)
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/'),
              icon: const Icon(Icons.home),
              label: const Text('Home'),
            ),

            /// Botão "Próxima" (só aparece se a rota for informada)
            if (rotaProxima != null)
              ElevatedButton.icon(
                onPressed: () => Navigator.pushNamed(context, rotaProxima!),
                icon: const Icon(Icons.arrow_forward),
                label: const Text('Próxima'),
              )
            else
              const SizedBox(width: 100), // Mantém alinhamento
          ],
        ),
      ),
    );
  }
}
