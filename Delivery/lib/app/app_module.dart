import 'package:delivery/app/app_controller.dart';
import 'package:delivery/app/modules/dashbord/dashbord_module.dart';
import 'package:delivery/app/modules/produto/produto_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:delivery/app/app_widget.dart';
import 'package:delivery/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: DashbordModule()),
        Router('/home/', module: HomeModule()),
        Router('/produto/', module: ProdutoModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
