import 'package:flutter/material.dart';

class CustomButtomNavegation extends StatelessWidget {
  const CustomButtomNavegation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(elevation: 0, items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home_max_outlined), label: 'inicio'),
       BottomNavigationBarItem(icon: Icon(Icons.label_outline), label: 'categorias'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: 'favoritos'),
      
      



    ]);
  }
}
