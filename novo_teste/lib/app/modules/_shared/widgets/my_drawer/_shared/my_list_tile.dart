import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final String uriNavegation;
  final bool isNavigate;
  const MyListTile(
      {Key? key,
      required this.title,
      required this.icon,
      required this.uriNavegation,
      this.isNavigate = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(title, style: const TextStyle(fontSize: 20.0)),
          leading: Icon(icon, size: 20.0),
          onTap: () {
            Navigator.of(context).pop();
            if (isNavigate) {
              Modular.to.navigate('/$uriNavegation/');
            } else {
              Modular.to.pushNamed('/$uriNavegation/');
            }
          },
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
