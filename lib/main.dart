import 'package:flutter/material.dart';

import 'home_page.dart';
import 'pages/etapa01_container_base.dart';
import 'pages/etapa02_container_margin.dart';
import 'pages/etapa03_column_child.dart';
import 'pages/etapa04_multiplos_containers.dart';
import 'pages/etapa05_row_estrutura.dart';
import 'pages/etapa06_main_cross_axis.dart';
import 'pages/etapa07_padding_externo.dart';
import 'pages/etapa08_container_circulo.dart';

void main() {
  runApp(const MyApp());
}

/// Widget principal que configura o MaterialApp e define rotas do app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explorando Widgets',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // Tela inicial
        '/': (context) => const HomePage(),

        // Etapas da atividade
        '/etapa01': (context) => const Etapa01ContainerBase(),
        '/etapa02': (context) => const Etapa02ContainerMargin(),
        '/etapa03': (context) => const Etapa03ColumnChild(),
        '/etapa04': (context) => const Etapa04MultiplosContainers(),
        '/etapa05': (context) => const Etapa05RowDentroColumn(),
        '/etapa06': (context) => const Etapa06RefatorarComMaterialApp(),
        '/etapa07': (context) => const Etapa07ConteudoNaRow(),
        '/etapa08': (context) => const Etapa08Alinhamentos(),
      },
    );
  }
}
