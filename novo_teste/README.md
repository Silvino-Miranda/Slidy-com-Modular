# Novo Teste — Flutter Triple

Projeto de teste demonstrando o padrão **Triple** para gerenciamento de estado reativo, utilizando **Flutter Modular 3** com suporte a **null safety**.

## Tecnologias

- **Flutter** (SDK `>=2.12.0 <3.0.0` — null safety)
- **flutter_modular 3.3.1** — roteamento e injeção de dependências
- **flutter_triple 1.2.3** — gerenciamento de estado reativo (padrão Triple)
- **mobx_triple 1.1.2** — integração MobX com Triple

## Arquitetura

Utiliza o padrão **Triple** (estado, erro, loading) com `Store` e `ScopedBuilder` para UI reativa:

```
lib/
├── main.dart                    # ModularApp → AppModule + AppWidget
└── app/
    ├── app_module.dart          # Módulo principal com HomeModule
    ├── app_widget.dart          # MaterialApp.modular()
    └── modules/
        ├── home/
        │   ├── home_module.dart     # Binds e rotas
        │   ├── home_store.dart      # Store Triple (estado reativo)
        │   └── home_page.dart       # UI com ScopedBuilder
        └── _shared/
            └── widgets/
                └── my_drawer/       # Drawer compartilhado
```

## Padrão Triple

O **Triple** gerencia 3 estados segmentos em um único Store:

- **State** — valor atual do estado
- **Error** — exceção, se houver
- **Loading** — indicador de carregamento

A UI reage automaticamente via `ScopedBuilder`:

```dart
ScopedBuilder(
  store: controller,
  onState: (context, state) => Text('$state'),
  onError: (context, error) => Text('Erro!'),
  onLoading: (context) => CircularProgressIndicator(),
)
```

## Como Executar

```bash
flutter pub get
flutter run
```
