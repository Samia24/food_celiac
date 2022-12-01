import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meuapp/view/button-myagend.dart';
import 'package:meuapp/view/button-mydocuments.dart';
import 'package:meuapp/view/button-myfotos.dart';
import 'package:meuapp/view/button-mymaps.dart';
import 'package:meuapp/view/myapp.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:meuapp/view/homepage.dart';
import 'package:meuapp/controller/buttons.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:meuapp/firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const MyApp());
}

