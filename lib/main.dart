import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'items_page.dart';

//buscar conectiviti

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sasón',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Color.fromARGB(255, 250, 255, 200), // Fondo del Scaffold
      ),
      debugShowCheckedModeBanner: false, // Ocultar la etiqueta de debug
      
      home: ItemsPage(),
    );
  }
}
