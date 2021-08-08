import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'models/dog_model.dart';
import 'services/dog_interface.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final IDogService dogService;

  @observable
  Future<List<DogModel>> dogList;

  _HomeControllerBase({@required this.dogService}) {
    getList();
  }

  @action
  Future<List<DogModel>> getList() async {
    return await dogService.queryAllRows();
  }

  @action
  save(DogModel model) async {
    await dogService.insert(model);
  }

  @action
  delete(int id) async {
    await dogService.delete(id);
  }

  @action
  update(DogModel model) async {
    await dogService.update(model);
  }

  ////////////////////////////////////////////////////////

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
