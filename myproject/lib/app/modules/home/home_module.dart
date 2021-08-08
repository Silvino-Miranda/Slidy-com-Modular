import 'package:flutter_modular/flutter_modular.dart';

import 'repositories/canil_interface.dart';
import 'repositories/canil_repository.dart';
import 'repositories/dog_interface.dart';
import 'repositories/dog_repository.dart';
import 'services/canil_interface.dart';
import 'services/canil_service.dart';
import 'services/dog_interface.dart';
import 'services/dog_service.dart';

import 'home_controller.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind<ICanilRepository>((i) => CanilRepository()),
        Bind<IDogRepository>((i) => DogRepository()),
        Bind<ICanilService>((i) => CanilService(canilRepository: i.get())),
        Bind<IDogService>((i) => DogService(dogRepository: i.get())),
        Bind((i) => HomeController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
