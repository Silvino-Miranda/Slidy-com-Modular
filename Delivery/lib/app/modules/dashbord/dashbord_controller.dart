import 'package:mobx/mobx.dart';

part 'dashbord_controller.g.dart';

class DashbordController = _DashbordBase with _$DashbordController;

abstract class _DashbordBase with Store {
  @observable
  bool favorito = false;

  @action
  void increment() {}
}
