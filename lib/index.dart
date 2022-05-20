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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              const Text(
                  'Toma de datos de Prodiplosis',
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
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 360.0,
                      child: Card(
                        child: Wrap(
                          children: <Widget>[
                            Image.asset('assets/images/image1.jpeg'),
                            const ListTile(
                              title: Text('Cultivo de Ruscus (Cachipay-Cundinamarca'),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 360.0,
                      child: Card(
                        child: Wrap(
                          children: <Widget>[
                            Image.asset('assets/images/image2.jpeg'),
                            const ListTile(
                              title: Text('Larva de Prodiplosis'),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 360.0,
                      child: Card(
                        child: Wrap(
                          children: <Widget>[
                            Image.asset('assets/images/image3.jpeg'),
                            const ListTile(
                              title: Text('Daños en Ruscus por Prodiplosis'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const Text(
                'Equipo de Trabajo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.lightGreen,
                ),
              ),
              const SizedBox(height: 20,),
              const Text(
                'Este proyecto es ejecutado por profesores, estudiantes de posgrado y pregado de la Universidad Nacional de Colombia sede Bogotá DC.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 360.0,
                      child: Card(
                        child: Wrap(
                          children: <Widget>[
                            Image.asset('assets/images/joaquin.jpg'),
                            const ListTile(
                              title: Text('phD Joaquín Ramirez'),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 360.0,
                      child: Card(
                        child: Wrap(
                          children: <Widget>[
                            Image.asset('assets/images/Guido.jpg'),
                            const ListTile(
                              title: Text('phD Guido Plaza'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const Text(
                'Contáctanos',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.lightGreen,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}