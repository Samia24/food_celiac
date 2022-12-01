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
            title: const Text('Orientações'),
            onTap: (() {
               Navigator.pushNamed(
                      context, '/pdf'
                   );
             
            }),
          ),
        ],
      ),
    );
  }
}
