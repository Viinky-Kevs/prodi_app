import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IndexHome extends StatefulWidget{
  const IndexHome({Key? key}) : super(key: key);
  @override
  State<IndexHome> createState() => _IndexHomeState();
}

class _IndexHomeState extends State<IndexHome>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              const Text(
                  'Toma de datos de prodiplosis',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.lightGreen,
                ),
              ),
              const SizedBox(height: 20,),
              const Text(
                'Esta aplicación facilita la toma de datos de Prodiplosis sp. para el modelamiento de la población y el planteamiento de un manejo fitosanitario que permita controlar',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20,),
              const Text(
                  'Podrá visualizar en un mapa interactivo el comportamiento poblacional, además de tener en una sección la información de los resultados del muestreo.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20,),
              Column(
                children: [
                  Image.asset('assets/images/image1.jpeg'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}