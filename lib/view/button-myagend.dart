import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAgend extends StatefulWidget {
  const MyAgend({super.key});

  @override
  State<MyAgend> createState() => _MyAgendState();
}

class _MyAgendState extends State<MyAgend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendário de eventos'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: const Text('Evento 1'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
