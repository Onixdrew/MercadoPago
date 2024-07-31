import 'package:ecomerce/src/screens/01_Login.dart';
import 'package:ecomerce/src/screens/03_HomePage.dart';
import 'package:ecomerce/src/screens/02_FormRegister.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MecadoLibre());
}
class MecadoLibre extends StatelessWidget {
  const MecadoLibre({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      // home: const PaginaRegistro(),
      // home: const Login(),

      routes: {
        '/inicio': (context) => const HomePage(),
        '/registro' : (context) => const FormRegister(),
      },
    );
  }
}
