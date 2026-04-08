# Slidy Aula 2 — Delivery Provider

Projeto de aula demonstrando o **flutter_modular 1.x** com **MobX** e um fluxo de autenticação completo: Splash → Login → Home.

## Tecnologias

- **Flutter** (SDK `>=2.7.0 <3.0.0`)
- **flutter_modular 1.2.4** — roteamento e injeção de dependências (API original)
- **MobX 1.2.1** + **flutter_mobx 1.1.0** — gerenciamento de estado
- **Dio 3.0.9** — cliente HTTP

## Arquitetura

Projeto criado com **Slidy CLI**, usando a API original do Modular 1.x (`MainModule`, `Router`):

```
lib/
├── main.dart                       # runApp com MainModule
└── app/
    ├── app_module.dart             # MainModule com rotas
    ├── app_widget.dart             # MaterialApp com Modular
    ├── app_controller.dart         # Controller MobX raiz
    ├── modules/
    │   ├── home/                   # Módulo Home
    │   │   ├── home_module.dart
    │   │   ├── home_controller.dart
    │   │   └── home_page.dart
    │   └── login/                  # Módulo Login
    │       ├── login_module.dart
    │       ├── login_controller.dart
    │       └── login_page.dart
    └── pages/
        └── splash/                 # Página Splash (rota inicial)
            ├── splash_page.dart
            └── splash_controller.dart
```

## Fluxo de Navegação

```
Splash (/) → Login (/login) → Home (/home)
```

| Rota | Componente | Descrição |
|------|------------|-----------|
| `/` | SplashPage | Tela inicial / loading |
| `/login` | LoginModule | Autenticação do usuário |
| `/home` | HomeModule | Tela principal do app |

## Destaques

- **Fluxo de autenticação** com splash screen como ponto de entrada
- **API Modular 1.x** — `MainModule` e `Router` (nomenclatura da versão original)
- Demonstra a evolução do flutter_modular comparado aos outros projetos

## Como Executar

```bash
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter run
```

> O `build_runner` é necessário para gerar os arquivos `.g.dart` do MobX.
