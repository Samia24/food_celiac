import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter/material.dart';

class MyPdfs extends StatefulWidget {
  const MyPdfs({super.key});

  @override
  State<MyPdfs> createState() => _MyPdfsState();
}

class _MyPdfsState extends State<MyPdfs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.asset(
              'pdf/ficha_hosp.pdf'
      ));
  }
}

class Pdf2 extends StatefulWidget {
  const Pdf2({super.key});

  @override
  State<Pdf2> createState() => _Pdf2State();
}

class _Pdf2State extends State<Pdf2> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: SfPdfViewer.asset(
              'pdf/orien_intern_hosp.pdf'
      ));
  }
}

class Pdf3 extends StatefulWidget {
  const Pdf3({super.key});

  @override
  State<Pdf3> createState() => _Pdf3State();
}

class _Pdf3State extends State<Pdf3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.asset(
              'pdf/guia.pdf'
      ));
  }
}

class Pdf4 extends StatefulWidget {
  const Pdf4({super.key});

  @override
  State<Pdf4> createState() => _Pdf4State();
}

class _Pdf4State extends State<Pdf4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.asset(
              'pdf/direitos.pdf'
      ));
  }
}

class Pdf5 extends StatefulWidget {
  const Pdf5({super.key});

  @override
  State<Pdf5> createState() => _Pdf5State();
}

class _Pdf5State extends State<Pdf5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.asset(
              'pdf/orient_farm.pdf'
      ));
  }
}

class Pdf6 extends StatefulWidget {
  const Pdf6({super.key});

  @override
  State<Pdf6> createState() => _Pdf6State();
}

class _Pdf6State extends State<Pdf6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.asset(
              'pdf/receitas.pdf'
      ));
  }
}