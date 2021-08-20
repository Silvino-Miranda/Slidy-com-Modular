import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:novo_teste/app/modules/_shared/widgets/my_drawer_widget.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      drawer: MyDrawer(),
      body: ScopedBuilder<HomeStore, Exception, int>(
        store: store,
        onState: (_, counter) {
          return Center(
            child: Text(
              '$counter',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
        onError: (context, error) => Center(
          child: Text(
            'Too many clicks',
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
