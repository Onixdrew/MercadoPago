
import 'package:ecomerce/HomePage.dart';
import 'package:ecomerce/PaginaRegistro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MecadoLibre());
}

class MecadoLibre extends StatelessWidget {
  const MecadoLibre({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: PaginaRegistro(),
      routes: {
        '/registro' : (context) => PaginaRegistro(),
        '/inicio' : (context) => HomePage()
      },
    );
  }
}
