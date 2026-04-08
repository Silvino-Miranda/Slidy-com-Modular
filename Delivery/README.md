# Delivery

App de delivery com catálogo de produtos, construído com **Flutter Modular 6** e **MobX** para gerenciamento de estado reativo.

## Tecnologias

- **Flutter** (SDK `>=3.0.0 <4.0.0`)
- **flutter_modular 6.3.4** — roteamento e injeção de dependências
- **MobX 2.4.0** + **flutter_mobx 2.2.0** — gerenciamento de estado
- **Dio 5.0.0** — cliente HTTP
- **carousel_slider 5.0.0** — componente de carrossel na UI

## Arquitetura

Projeto criado com **Slidy CLI**, seguindo o padrão modular com MobX:

```
lib/
├── main.dart                    # ModularApp → AppModule + AppWidget
└── app/
    ├── app_module.dart          # Módulo principal com rotas
    ├── app_widget.dart          # MaterialApp com Modular router
    ├── app_controller.dart      # Controller MobX raiz
    └── modules/
        ├── dashbord/            # Módulo Dashboard (rota: /)
        │   ├── dashbord_module.dart
        │   ├── dashbord_controller.dart
        │   └── dashbord_widget.dart
        ├── home/                # Módulo Home (rota: /home)
        │   ├── home_module.dart
        │   ├── home_controller.dart
        │   └── home_page.dart
        └── produto/             # Módulo Produto (rota: /produto)
            ├── produto_module.dart
            ├── produto_controller.dart
            ├── produto_widget.dart
            └── _shared/         # Componentes compartilhados (drawers, etc.)
```

## Módulos e Rotas

| Rota | Módulo | Descrição |
|------|--------|-----------|
| `/` | Dashboard | Tela principal com carrossel |
| `/home` | Home | Listagem / navegação |
| `/produto` | Produto | Detalhes e catálogo de produtos |

## Como Executar

```bash
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter run
```

> O `build_runner` é necessário para gerar os arquivos `.g.dart` do MobX.
