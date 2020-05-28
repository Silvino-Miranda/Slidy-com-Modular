import 'package:mobx/mobx.dart';

part 'dashbord_controller.g.dart';

class DashbordController = _DashbordBase with _$DashbordController;

abstract class _DashbordBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
