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