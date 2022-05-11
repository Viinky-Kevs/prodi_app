import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{

  const HomeScreen({ Key? key}) : super(key:key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pro-Diplosis'),),
      body: PageView(
        controller: pageController,
        children: [
          Container(color: Colors.blueAccent),
          Container(color: Colors.white),
          Container(color: Colors.redAccent),
          Container(color: Colors.yellow),
          Container(color: Colors.green),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
            BottomNavigationBarItem(icon: Icon(Icons.account_tree), label: 'Carga de datos'),
            BottomNavigationBarItem(icon: Icon(Icons.addchart_rounded), label: 'Visualización'),
            BottomNavigationBarItem(icon: Icon(Icons.add_location), label: 'Mapa'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Iniciar sesión'),
          ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.green,
        selectedItemColor: Colors.white,
        onTap: onTapped,
      ),
    );
  }

}