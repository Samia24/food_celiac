import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyEvent extends StatefulWidget {
  const MyEvent({super.key});

  @override
  State<MyEvent> createState() => _MyEventState();
}

class _MyEventState extends State<MyEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos de Eventos'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: const Text('Casamento'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Formatura'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Aniversários'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
