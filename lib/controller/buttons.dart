import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meuapp/view/button-myagend.dart';
import 'package:meuapp/view/button-mydocuments.dart';
import 'package:meuapp/view/button-myfotos.dart';
import 'package:meuapp/view/button-mymaps.dart';
import 'package:meuapp/main.dart';

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
          Image.asset('image/logo.png'),
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
                  child: const Text('Doc.'),
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
                  child: const Text('Agenda'),
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
