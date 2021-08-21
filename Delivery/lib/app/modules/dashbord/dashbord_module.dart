import 'package:delivery/app/modules/dashbord/dashbord_controller.dart';
import 'package:delivery/app/modules/dashbord/dashbord_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DashbordModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => DashbordController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => DashbordPage()),
  ];

  // static Inject get to => Inject<DashbordModule>.of();
}
