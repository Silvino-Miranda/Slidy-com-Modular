import 'package:delivery/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:delivery/app/modules/home/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton(HomeController.new);
  }

  @override
  void routes(RouteManager r) {
    r.add(ChildRoute('/', child: (context) => HomePage()));
  }
}
