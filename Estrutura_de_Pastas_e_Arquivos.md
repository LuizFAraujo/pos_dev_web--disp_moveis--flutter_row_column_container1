# 📁 Estrutura de Pastas e Arquivos 📁

A estrutura abaixo apresenta como o projeto **Explorando Widgets - Container, Row e Column** está organizado, facilitando a navegação entre as etapas propostas na atividade e o entendimento da construção progressiva da interface.

Cada etapa foi separada como uma página (`Page`) independente, com um componente de navegação reutilizável para facilitar o acesso entre elas. A tela inicial (`Home`) centraliza os acessos e contextualiza o objetivo do app.

```plaintext
project_root/
├── android/
│   └── ...                               # Código nativo Android
│
├── lib/
│   ├── main.dart                         # Entry point com MaterialApp e rotas nomeadas
│   ├── home_page.dart                    # Tela inicial com título e botões de acesso às etapas
│   │
│   ├── pages/                            # Páginas individuais para cada etapa da atividade
│   │   ├── etapa01_container_base.dart          # Container básico com cor
│   │   ├── etapa02_container_margin.dart        # Container com margem aplicada
│   │   ├── etapa03_column_child.dart            # Column inserida no Container
│   │   ├── etapa04_multiplos_containers.dart    # Vários containers pequenos empilhados
│   │   ├── etapa05_row_estrutura.dart           # Row dentro da Column e comportamento do layout
│   │   ├── etapa06_main_cross_axis.dart         # Alinhamento com mainAxis e crossAxis
│   │   ├── etapa07_padding_externo.dart         # Uso de Padding e EdgeInsets.only
│   │   └── etapa08_container_circulo.dart       # Containers transformados em círculos
│   │
│   └── widgets/
│       └── navigation_bar_etapa.dart     # Widget com botões: Anterior, Próxima e Home
│
├── web/                                  # Arquivos de configuração para Flutter Web
│   └── ...                               # favicon, index.html, etc.
│
├── .gitignore
├── .metadata                             # Arquivo interno do Flutter
├── Estrutura_de_Pastas_e_Arquivos.md     # Este arquivo com a estrutura comentada
├── LICENSE                               # Licença de uso (MIT)
├── README.md                             # Documentação principal do projeto
├── analysis_options.yaml                 # Regras de análise de código (linter)
└── pubspec.yaml                          # Dependências, assets e configurações do projeto
```

---

**🧠 Dica**: O projeto segue boas práticas de separação de responsabilidades e organização visual para cada etapa da atividade, permitindo o entendimento da construção do layout de forma progressiva e modular.

> Projeto gerado para fins acadêmicos — Pós-Graduação IFSP.

📄 [Voltar para o README principal](./README.md)
