# MyProject — Gerenciamento de Canil

App de gerenciamento de canil (dogs) com persistência local em **SQLite**, construído com **Flutter Modular 2** e arquitetura limpa baseada em **Repository** e **Service**.

## Tecnologias

- **Flutter** (SDK `>=2.7.0 <3.0.0`)
- **flutter_modular 2.0.0** — roteamento e injeção de dependências
- **MobX 1.2.1** + **flutter_mobx 1.1.0** — gerenciamento de estado
- **Dio 3.0.10** — cliente HTTP
- **sqflite 1.3.1** — banco de dados SQLite local
- **path_provider 1.6.16** — acesso ao filesystem
- **intl 0.16.1** — internacionalização

## Arquitetura

Projeto com **Clean Architecture simplificada**: camada de Repository (acesso a dados) e Service (lógica de negócio) com interfaces para desacoplamento.

```
lib/
├── main.dart                          # Inicializa DB e roda ModularApp
└── app/
    ├── app_module.dart                # MainModule com HomeModule
    ├── app_widget.dart                # MaterialApp com Modular
    ├── app_controller.dart            # Controller MobX raiz
    └── modules/home/
        ├── home_module.dart           # Binds e rotas do módulo
        ├── home_controller.dart       # Controller MobX da Home
        ├── home_page.dart             # Tela principal
        ├── database/
        │   └── init.database.dart     # Inicialização do SQLite
        ├── models/                    # Modelos de dados
        ├── repositories/             # Camada de dados
        │   ├── interfaces/
        │   │   ├── icanil_repository.dart
        │   │   └── idog_repository.dart
        │   ├── canil_repository.dart
        │   └── dog_repository.dart
        └── services/                  # Camada de negócio
            ├── interfaces/
            │   ├── icanil_service.dart
            │   └── idog_service.dart
            ├── canil_service.dart
            └── dog_service.dart
```

## Destaques

- **Injeção de dependências** via Modular com interfaces (`ICanilRepository`, `IDogRepository`)
- **Banco local SQLite** com inicialização assíncrona no `main()`
- **Padrão Repository/Service** para separação de responsabilidades
- **Assets** para imagens (`assets/images/`)

## Como Executar

```bash
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter run
```

> O banco SQLite é inicializado automaticamente na primeira execução.
