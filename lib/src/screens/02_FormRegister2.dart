import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  final _formKey = GlobalKey<FormState>();
  String nombre = "";
  String correo = "";
  String Password = "";

  Future<void> _registerUser() async {
    final url = Uri.parse('https://api-mercadopago.onrender.com/api/agregarUser');
    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'nombre': nombre,
        'correo': correo,
        'contraseña': Password,
      }),
    );

    if (response.statusCode == 201) {
      // Si el servidor devuelve un 201 CREATED, se muestra un mensaje de éxito.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Registro exitoso')),
      );
    } else {
      // Si el servidor no devuelve un 201 CREATED, se lanza una excepción.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Error al registrar el usuario')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Image.network(
                      "https://cdn-icons-png.flaticon.com/128/758/758669.png",
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      "Registrate.",
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      "Crear una nueva cuenta",
                    ),
                    const SizedBox(height: 24.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Nombre completo",
                        prefixIcon: const Icon(Icons.person_3_rounded),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Ingrese nombre completo";
                        }
                        return null;
                      },
                      // esto guarda el archivo en la variable anteriormente declarada
                      onSaved: (value) {
                        nombre = value!;
                      },
                    ),
                    const SizedBox(height: 12.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Correo",
                        prefixIcon: const Icon(Icons.email_sharp),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Ingrese email";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        correo = value!;
                      },
                    ),
                    const SizedBox(height: 12.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Contraseña",
                        prefixIcon: const Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Ingrese password";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        Password = value!;
                      },
                    ),
                    const SizedBox(height: 12.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Confirmar Contraseña",
                        prefixIcon: const Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "verifica el password";
                        }
                        return null;
                      },
                    
                    ),
                    const SizedBox(height: 24.0),
                    SizedBox(
                      width: double.infinity,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Validar el formulario
                            _formKey.currentState!.save(); // Guardar el formulario si es válido
                            _registerUser(); // Llamar a la función para registrar el usuario
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            )),
                        child: const Text("Registrarse"),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Tienes una cuenta?"),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Text(
                            "Iniciar sesión",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
