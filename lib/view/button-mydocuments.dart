import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDocuments extends StatefulWidget {
  const MyDocuments({super.key});

  @override
  State<MyDocuments> createState() => _MyDocumentsState();
}

class _MyDocumentsState extends State<MyDocuments> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Documentos'),
        backgroundColor: Colors.redAccent[400],
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: const Text('Ficha para internação'),
            onTap: (() {
               Navigator.pushNamed(
                      context, '/pdf'
                   );
             }),
          ),
          ListTile(
            title: const Text('Orientações para internação hospitalar'),
            onTap: (() {
               Navigator.pushNamed(
                      context, '/pdf2'
                   );
            }),
          ),
          ListTile(
            title: const Text('Guia de orientação para o celíaco'),
            onTap: (() {
               Navigator.pushNamed(
                      context, '/pdf3'
                   );
            }),
          ),
          ListTile(
            title: const Text('Direitos dos celíacos'),
            onTap: (() {
               Navigator.pushNamed(
                      context, '/pdf4'
                   );
            }),
          ),
          ListTile(
            title: const Text('Orientações para farmácias de manipulação'),
            onTap: (() {
               Navigator.pushNamed(
                      context, '/pdf5'
                   );
            }),
          ),
          ListTile(
            title: const Text('Receitas simples - sem glúten'),
            onTap: (() {
               Navigator.pushNamed(
                      context, '/pdf6'
                   );
            }),
          ),
        ],
      ),
    );
  }
}
