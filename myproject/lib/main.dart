import 'package:flutter/material.dart';
import 'package:myproject/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/modules/home/database/init.database.dart';

void main() async {
   //permite carregar dados dados assincronos no main()
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper.instance.database;
  runApp(
    ModularApp(
      module: AppModule(),
    ),
  );
}
