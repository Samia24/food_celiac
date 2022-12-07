import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meuapp/controller/buttons.dart';
import 'package:meuapp/view/button-myagend.dart';
import 'package:meuapp/view/button-mydocuments.dart';
import 'package:meuapp/view/button-myfotos.dart';
import 'package:meuapp/view/button-mymaps.dart';
import '../main.dart';
import 'package:path/path.dart' as p;
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;

  final List<Widget> _children = [
    Home(),
    Contatos(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food of Celiac'),
        centerTitle: true,
        backgroundColor: Colors.redAccent[400],
      ),
      drawer: Drawer(
        backgroundColor: Colors.greenAccent[400],
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/glutenfree.png'), scale: 1.0),
                    ),
                child: Text(
                  '',
                  style: TextStyle(),
                )),
            ListTile(
              onTap: () => Navigator.pushNamed(context, '/'),
              dense: true,
              trailing: Icon(Icons.exit_to_app_rounded,
              color: Colors.red),
              title: Text('Volte sempre ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 20,
                color: Colors.redAccent[400]
              ),),
              ),
          ],
        ),
      ),
      body: _children[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Lojas',
          ),
        ],
        currentIndex: _selectIndex,
        selectedItemColor: Colors.greenAccent[400],
        onTap: _onItemTapped,
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            'images/logo.png',
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 150,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.redAccent[400]),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyDocuments(),
                      ),
                    );
                  },
                  child: const Text('Documentos'),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 60,
                width: 150,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.greenAccent[400]),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyAgend(),
                      ),
                    );
                  },
                  child: const Text('Celíacos-PI'),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 150,
                color: Colors.blue[400],
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.greenAccent[400]),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyMaps(),
                      ),
                    );
                  },
                  child: const Text('Localização'),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 60,
                width: 150,
                color: Colors.blue[400],
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.redAccent[400]),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyFotos(),
                      ),
                    );
                  },
                  child: const Text('Fotos'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Contatos extends StatefulWidget {
  const Contatos({super.key});
  @override
  State<Contatos> createState() => _ContatosState();
}

class _ContatosState extends State<Contatos> {
  
  launchURL() {
    launchUrl(p.toUri('https://api.whatsapp.com/send?phone=558688282840&utm_medium=social&utm_source=heylink.me'));
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        title: Center(child: const Text('Contatos das Lojas')),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: 
              Container(
                child: Column(
                    children: [
                      SizedBox(height:20),
                      Row(
                        children: [
                          const Icon(Icons.store,
                          color: Colors.red,),
                          const Text('Mundo Verde - Jóquei'),
                          ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on,
                          color: Colors.red,),
                          const Text('Av. Dom Severino, 100 - Jockey Club, Teresina - PI, 64052-005'),
                          ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.whatsapp,
                              color: Colors.greenAccent),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.redAccent[400], 
                              onPrimary: Colors.white
                              ),
                              onPressed: launchURL,
                              child: const Text('Link para pedidos'),
                              ),
                          ],
                      ),
                      SizedBox(height:30),
                    Row(
                        children: [
                          const Icon(Icons.store,
                          color: Colors.red,),
                          const Text('Mundo Verde - Teresina Shopping'),
                          ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on,
                          color: Colors.red,),
                          const Text('Av. Raul Lopes, 1000 - Loja 302 - Noivos, Teresina - PI, 64046-902'),
                          ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.whatsapp,
                              color: Colors.greenAccent),
                          const Text('(86) 3231-1345'),
                        ],
                      ),
                       SizedBox(height:30),
                    Row(
                        children: [
                          const Icon(Icons.store,
                          color: Colors.red,),
                          const Text('Mercado dos Grãos - São Cristóvão'),
                          ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on,
                          color: Colors.red,),
                          const Text('Av. Dom Severino, 2134 Salas 1 a 4 - São Cristóvão, Teresina - PI, 64051-160'),
                          ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.whatsapp,
                              color: Colors.greenAccent),
                          const Text('(86) 99581-2548'),
                        ],
                      ),
                      SizedBox(height:30),
                    Row(
                        children: [
                          const Icon(Icons.store,
                          color: Colors.red,),
                          const Text('Mercado dos Grãos - Jóquei'),
                          ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on,
                          color: Colors.red,),
                          const Text('R. Des. Manoel Castelo Branco, 1320 - Jóquei, Teresina - PI, 64049-270'),
                          ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.whatsapp,
                              color: Colors.greenAccent),
                          const Text('(86) 99475-4713'),
                        ],
                      ),
                      SizedBox(height:30),
                    Row(
                        children: [
                          const Icon(Icons.store,
                          color: Colors.red,),
                          const Text('Ateliê Fit da Jú'),
                          ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on,
                          color: Colors.red,),
                          const Text('Av. Pedro Almeida, 1039 - São Cristóvão, Teresina - PI, 64052-280'),
                          ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.whatsapp,
                              color: Colors.greenAccent),
                          const Text('(86) 99800-9527'),
                        ],
                      ),
                      SizedBox(height:30),
                    Row(
                        children: [
                          const Icon(Icons.store,
                          color: Colors.red,),
                          const Text('Confeitaria Jacqueline Freire'),
                          ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on,
                          color: Colors.red,),
                          const Text('Rua Professor Joca Vieira, 1640 - Fátima, Teresina - PI, 64049-514'),
                          ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.whatsapp,
                              color: Colors.greenAccent),
                          const Text('(86) 99862-5907'),
                        ],
                      ),
                    ],
                  ),
            ),
                ),
        ],
      ),
    );
  }
}

