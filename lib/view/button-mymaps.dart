import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMaps extends StatefulWidget {
  const MyMaps({super.key});

  @override
  State<MyMaps> createState() => _MyMapsState();
}

class _MyMapsState extends State<MyMaps> {
  late GoogleMapController mapController;
  double latitude = -5.0733171557472225;
  double longitude = -42.788253993709;

  Set<Marker> marcadores = {};
  

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });  
  }
_movimentarCamera(){
   mapController.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(target: LatLng(latitude,longitude),
      zoom: 16,
      tilt: 45,
      bearing: 90,
      ),
    ),
  );
}

_carregarMarcadores(){
  Marker marcadorMercadoGraosJoquei = Marker(
    markerId: MarkerId('Mercado dos Grãos - Produtos Naturais, Veganos, a Granel, Saudáveis e Suplementos'),
    position: LatLng(-5.0733171557472225,-42.788253993709),
    infoWindow: InfoWindow(
      title: 'Mercado dos Grãos - Jóquei'
    ),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose),
    onTap: () {},
  );

  Marker marcadorMercadoGraosDomSeverino= Marker(
  markerId: MarkerId('Mercado dos Grãos - Produtos Naturais, Veganos, a Granel, Saudáveis e Suplementos'),
  position: LatLng(-5.0701060066023755, -42.78150197357981),
  infoWindow: InfoWindow(
    title: 'Mercado dos Grãos - Dom Severino'
  ),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose),
  onTap: () {},
  );

  Marker marcadorConfeitariaJacqueline = Marker(
  markerId: MarkerId('Confeitaria Funcional Jacqueline Freire'),
  position: LatLng(-5.071268685901519, -42.787114260089254),
  infoWindow: InfoWindow(
    title: 'Confeitaria Funcional Jacqueline Freire'
  ),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose),
  onTap: () {},
  );

  Marker marcadorMundoVerde = Marker(
  markerId: MarkerId('Mundo Verde'),
  position: LatLng(-5.07011979863096, -42.78348121776227),
  infoWindow: InfoWindow(
    title: 'Mundo Verde'
  ),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose),
  onTap: () {},
  );

  Marker marcadorAtelieFitJu = Marker(
  markerId: MarkerId('Ateliê Fit da Jú'),
  position: LatLng(-5.07011979863096, -42.78348121776227),
  infoWindow: InfoWindow(
    title: 'Ateliê Fit da Jú'
  ),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose),
  onTap: () {},
  );

  setState(() {
    marcadores.add(marcadorMercadoGraosJoquei);
    marcadores.add(marcadorMercadoGraosDomSeverino);
    marcadores.add(marcadorConfeitariaJacqueline);
    marcadores.add(marcadorMundoVerde);
    marcadores.add(marcadorAtelieFitJu);

  });
}

@override
 void initState(){
  super.initState();
  _carregarMarcadores();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Localização das Lojas')
        ),
        backgroundColor: Colors.redAccent[400],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(onPressed: _movimentarCamera,
      child: Icon(Icons.done),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
           initialCameraPosition: CameraPosition(
            target: LatLng(latitude,longitude),
            zoom: 11.0,
          ),
          onMapCreated: _onMapCreated,
          markers: marcadores,
        ),
    );
  }
}