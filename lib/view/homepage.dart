import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meuapp/controller/buttons.dart';
import 'package:meuapp/view/button-myagend.dart';
import 'package:meuapp/view/button-mydocuments.dart';
import 'package:meuapp/view/button-myfotos.dart';
import 'package:meuapp/view/button-mymaps.dart';
import '../main.dart';

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
                        image: AssetImage('images/logo.png'), scale: 1.0),
                    color: Colors.white),
                child: Text(
                  '',
                  style: TextStyle(),
                )),
            ListTile(title: const Text('Volte sempre !!')),
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
          Row(
            children: [
              Container(
                  // child: ElevatedButton(
                  //  onPressed: () {},
                  ),
              //)
            ],
          )
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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Contatos das Lojas',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            backgroundColor: Colors.greenAccent[400],
          ),
        ),
      ),
    );
  }
}

