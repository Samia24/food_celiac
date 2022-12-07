import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:url_launcher/url_launcher.dart';

class MyAgend extends StatelessWidget {
  const MyAgend({super.key});

   launchURL() {
     launchUrl(p.toUri('https://instagram.com/celiacospi?igshid=YTY2NzY3YTc='));
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[400],
        title: const Text('Instagram do Grupo Celíacos-PI'),
      ),
       body: Center(
        widthFactor: 150,
        heightFactor: 150,
         child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.redAccent[400], 
            onPrimary: Colors.white
            ),
           onPressed: launchURL,
           child: const Text('Link do instagram'),
         ),
       ),
     );
  }
}

/*class MyAgend extends StatefulWidget {
  const MyAgend({super.key});

  @override
  State<MyAgend> createState() => _MyAgendState();
}

class _MyAgendState extends State<MyAgend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram do Grupo Celíacos-PI'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: const Text('Link do instagram'),
            onTap: () {
              abrirUrl() async {
                const url = 'https://instagram.com/celiacospi?igshid=YTY2NzY3YTc=';
                if (await canLaunch(url)) {
                  await launch(url);
                  } else {
                    throw 'Não foi possível iniciar $url';
  }
}
            },
          )
        ],
      ),
    );
  }
}*/
