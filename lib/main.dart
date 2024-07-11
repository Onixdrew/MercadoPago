
import 'package:ecomerce/src/screens/Login.dart';
import 'package:ecomerce/src/screens/HomePage.dart';
import 'package:ecomerce/src/screens/FormRegister.dart';
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
      // home: PaginaRegistro(),
      home: Login(),

      
      routes: {
        // '/registro' : (context) => PaginaRegistro(),
        // '/inicio' : (context) => const HomePage()
      },
    );
  }
}
