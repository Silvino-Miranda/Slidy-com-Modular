import 'package:Delivery/app/modules/dashbord/dashbord_controller.dart';
import 'package:Delivery/app/modules/dashbord/dashbord_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DashbordModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DashbordController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => DashbordWidget()),
      ];

  static Inject get to => Inject<DashbordModule>.of();
}
