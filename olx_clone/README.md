# OLX Clone — Venturosa Vendas

Clone de marketplace inspirado na OLX, construído com **Flutter puro** sem frameworks de arquitetura. Projeto simples focado em aprender os fundamentos do Flutter com padrão MVC básico.

## Tecnologias

- **Flutter** (SDK `>=2.7.0 <3.0.0`)
- **cupertino_icons** — ícones estilo iOS
- Sem dependências externas de arquitetura (sem Modular, sem MobX)

## Arquitetura

Padrão **MVC simples** com organização por feature em `lib/src/`:

```
lib/
├── main.dart                    # MyApp → MaterialApp direto
└── src/
    ├── produto/
    │   ├── home_page.dart       # Tela principal com listagem
    │   ├── detail_item.dart     # Tela de detalhes do produto
    │   ├── list_item.dart       # Widget de item na lista
    │   ├── item_model.dart      # Modelo de dados do produto
    │   └── produto_service.dart # Serviço de dados
    └── widgets/                 # Widgets reutilizáveis
```

## Características

- **Sem injeção de dependências** — instanciação direta dos serviços
- **Sem gerenciamento de estado externo** — StatelessWidget / StatefulWidget nativos
- **Organização por feature** (`src/produto/`) ao invés de por camada
- **Leve e direto** — ideal para aprender conceitos básicos do Flutter

## Funcionalidades

- Listagem de produtos
- Detalhes do produto
- Widgets customizados reutilizáveis

## Como Executar

```bash
flutter pub get
flutter run
```
