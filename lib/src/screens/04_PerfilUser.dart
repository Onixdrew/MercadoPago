import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PerfilUser extends StatelessWidget {
  const PerfilUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        foregroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back,color: Colors.white),
        title: const Text(
        "Perfil",
        style: TextStyle(color: Colors.white),
        ),
      ),
      body:  Padding(
        padding:const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://st4.depositphotos.com/15648834/23779/v/1600/depositphotos_237795804-stock-illustration-unknown-person-silhouette-profile-picture.jpg"),
              ),
              const SizedBox( height: 10),
              const Text("Mario Benedetti",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox( height: 10),

              Expanded(
                child: ListView(
                children:  [
                  ListTile(
                    leading: const Icon(
                      Icons.person_2_outlined,
                      color: Colors.blue,
                    ),
                    title: const Text("Genero"),
                    trailing: const Text("Masculino"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.cake,
                      color: Colors.blue,
                    ),
                    title: const Text("Cumpleaños"),
                    trailing: const Text("12-2-2024"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    title: const Text("Numero de telefono"),
                    trailing: const Text("310-345654656"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.lock,
                      color: Colors.blue,
                    ),
                    title: const Text("Cambiar Password"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  )
                ],
              ),)

            ],
          ),
        ),
        )
    );
  }
}