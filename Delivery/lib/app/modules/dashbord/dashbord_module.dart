import 'package:delivery/app/modules/dashbord/dashbord_controller.dart';
import 'package:delivery/app/modules/dashbord/dashbord_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DashbordModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton(DashbordController.new);
  }

  @override
  void routes(RouteManager r) {
    r.add(ChildRoute('/', child: (context) => DashbordPage()));
  }
}
