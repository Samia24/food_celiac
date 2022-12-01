import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFotos extends StatefulWidget {
  const MyFotos({super.key});

  @override
  State<MyFotos> createState() => _MyFotosState();
}

class _MyFotosState extends State<MyFotos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Fotos'),
        backgroundColor: Colors.redAccent[400],
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: const Text('Dia Nacional do Celíaco'),
            onTap: () {
              Navigator.pushNamed(
                      context, '/fotos'
                   );
            },
          ),
          ListTile(
            title: const Text('Evento - Formatura'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Evento - Aniversário'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}