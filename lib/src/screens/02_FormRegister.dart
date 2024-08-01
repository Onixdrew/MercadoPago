// import 'package:ecomerce/src/controllers/UserController.dart';
// import 'package:flutter/material.dart';

// class FormRegister extends StatefulWidget {
//   const FormRegister({super.key});

//   @override
//   State<FormRegister> createState() => _FormRegisterState();
// }

// class _FormRegisterState extends State<FormRegister> {
//   final _formkey = GlobalKey<FormState>();
//   final TextEditingController _nombreController = TextEditingController();
//   final TextEditingController _correoController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   Future<Users>? _futureUsers;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // permite utilizar una region del desplazamiento que puede yener un solo widget
//         // form la puede agrupar y trabajar varios widgets
//         body: Center(
//       child: Padding(
//         padding: const EdgeInsets.all(12),
//         child: SingleChildScrollView(
//             key: _formkey,
//             child: Form(
//               child: Padding(
//                 padding: const EdgeInsets.all(14.0),
//                 child: Column(
//                   children: [
//                     Image.network(
//                       "https://cdn-icons-png.flaticon.com/128/758/758669.png",
//                       width: 100,
//                       height: 100,
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const Text("Registrate",
//                         style: TextStyle(
//                             fontSize: 24, fontWeight: FontWeight.bold)),
//                     const SizedBox(
//                       height: 40,
//                     ),
//                     TextFormField(
//                       controller: _nombreController,
//                       decoration: InputDecoration(
//                           labelText: "Nombre completo",
//                           prefixIcon: const Icon(Icons.person_3_sharp),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8))),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return "El campo no debe estar vacio";
//                         }
//                         return null;
//                       },
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       controller: _correoController,
//                       decoration: InputDecoration(
//                           labelText: "Correo",
//                           prefixIcon: const Icon(Icons.email),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8))),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return "El campo no debe estar vacio";
//                         }
//                         return null;
//                       },
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       controller: _passwordController,
//                       decoration: InputDecoration(
//                           labelText: "contraseña",
//                           prefixIcon: const Icon(Icons.password),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8))),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return "El campo no debe estar vacio";
//                         }
//                         return null;
//                       },
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       decoration: InputDecoration(
//                           labelText: "Confirmar contraseña",
//                           prefixIcon: const Icon(Icons.password),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8))),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return "El campo no debe estar vacio";
//                         }
//                         return null;
//                       },
//                     ),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     SizedBox(
//                       width: double.infinity,
//                       height: 50.0,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           if (_formkey.currentState!.validate()) {
//                             setState(() {
//                               _futureUsers = createUsers(
//                                 _nombreController.text,
//                                 _correoController.text,
//                                 _passwordController.text,
//                               );
//                             });
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(content: Text('Registro exitoso')),
//                             );
//                           }
//                         },
//                         child: Text("Registrarse"),
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.blue,
//                             foregroundColor: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8.0),
//                             )),
//                       ),
//                     ),
//                     SizedBox(height: 16.0),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                       const Text("Tienes una cuenta?"),
//                       TextButton(
//                           onPressed: () {
//                             Navigator.pushNamed(context, '/login');
//                           },
//                           child: const Text("Iniciar sesión",
//                               style: TextStyle(
//                                 color: Colors.blue,
//                               )))
//                     ])
//                   ],
//                 ),
//               ),
//             )),
//       ),
//     ));
//   }
// }
