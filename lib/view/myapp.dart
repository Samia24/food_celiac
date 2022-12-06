import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meuapp/main.dart';
import 'package:meuapp/view/botton-myevent.dart';
import 'package:meuapp/view/button-myagend.dart';
import 'package:meuapp/view/button-mydocuments.dart';
import 'package:meuapp/view/button-myfotos.dart';
import 'package:meuapp/view/button-mymaps.dart';
import 'package:meuapp/view/button-mypdfs.dart';
import 'package:meuapp/view/homepage.dart';
import 'package:meuapp/view/imagens.dart';
import 'package:meuapp/view/reset-password-page.dart';
import 'package:meuapp/view/signin-page.dart';
import 'package:meuapp/view/signuppage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu app',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SigninPage(),
        '/Home': (context) => const Home(),
        '/documentos': (context) => const MyDocuments(),
        '/agenda': (context) => const MyAgend(),
        '/eventos': (context) => const MyEvent(),
        '/foto': (context) => const Images(),
        '/foto2': (context) => const Image2(),
        //'/homemap': (context) => const MyMaps(),
        '/pdf': (context) => const MyPdfs(),
        '/pdf2': (context) => const Pdf2(),
        '/pdf3': (context) => const Pdf3(),
        '/pdf4': (context) => const Pdf4(),
        '/pdf5': (context) => const Pdf5(),
        '/pdf6': (context) => const Pdf6(),
      },
    );
  }
}
