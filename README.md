# Slidy com Modular — Projetos Flutter

Coleção de projetos Flutter de estudo focados na utilização do **Slidy CLI** e do **flutter_modular** para arquitetura modular, injeção de dependências e gerenciamento de estado.

> **Status:** Projetos inativos / arquivo de estudo.

## Projetos

| Projeto | Descrição | Arquitetura | Estado | SDK Dart |
|---------|-----------|-------------|--------|----------|
| [Delivery](Delivery/) | App de delivery com catálogo de produtos | Modular 6 + MobX | `>=3.0.0 <4.0.0` | Mais recente |
| [myproject](myproject/) | Gerenciamento de canil com banco local | Modular 2 + MobX + SQLite | `>=2.7.0 <3.0.0` | Repository/Service |
| [novo_teste](novo_teste/) | Contador reativo com Triple | Modular 3 + flutter_triple | `>=2.12.0 <3.0.0` | Null Safety |
| [olx_clone](olx_clone/) | Clone de marketplace (Venturosa Vendas) | Flutter puro (MVC) | `>=2.7.0 <3.0.0` | Sem Modular |
| [slidy_aula_2](slidy_aula_2/) | Aula — fluxo splash → login → home | Modular 1 + MobX | `>=2.7.0 <3.0.0` | Versão inicial |

## Tecnologias Utilizadas

- **Flutter** — framework multiplataforma
- **Dart** — linguagem de programação
- **Slidy CLI** — gerador de código e estrutura para projetos Flutter
- **flutter_modular** — roteamento e injeção de dependências (versões 1.x a 6.x)
- **MobX** — gerenciamento de estado reativo (3 projetos)
- **flutter_triple** — padrão Triple para estado reativo (1 projeto)
- **Dio** — cliente HTTP (3 projetos)
- **SQLite** — banco de dados local (1 projeto)

## Estrutura do Workspace

```
Slidy com Modular/
├── Delivery/          # Modular 6 + MobX + Dio + Carousel
├── myproject/         # Modular 2 + MobX + SQLite + Repository
├── novo_teste/        # Modular 3 + flutter_triple
├── olx_clone/         # Flutter puro — MVC simples
└── slidy_aula_2/      # Modular 1 + MobX — fluxo de autenticação
```

## Pré-requisitos

- [Flutter SDK](https://flutter.dev/docs/get-started/install) instalado
- Dart SDK (incluso no Flutter)
- Editor: VS Code ou Android Studio

## Como Executar

Dentro de cada projeto:

```bash
flutter pub get
flutter run
```

Para projetos com **MobX** (geração de código):

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Evolução do flutter_modular

Estes projetos demonstram a evolução do `flutter_modular` ao longo do tempo:

| Versão | Projeto | Destaques |
|--------|---------|-----------|
| **1.x** | slidy_aula_2 | `MainModule`, `Router`, API original |
| **2.x** | myproject | `Module`, `ModularRoute`, nova API |
| **3.x** | novo_teste | Suporte a null safety, `MaterialApp.modular()` |
| **6.x** | Delivery | API atual com `ModularApp`, rotas simplificadas |
