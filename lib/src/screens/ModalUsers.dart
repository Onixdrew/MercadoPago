// import 'package:ecomerce/src/controllers/UserController.dart';
// import 'package:flutter/material.dart';

// ModalUsuario(BuildContext context) {
//   // final consultaUsuarios = consultausuarios();
// //  print(consultaUsuarios);

//   consultUsers().then((consultausuarios) {
//     // print(consultausuarios[1].name);
//     showModalBottomSheet(
//         context: context,
//         builder: (context) {
//           // return StatefulBuilder(builder: (BuildContext context, stateset))
//           return Scaffold(
//             appBar: AppBar(
//               actions: const [
//                 Padding(padding: EdgeInsets.all(8), child: Icon(Icons.event)),
//               ],
//               backgroundColor: Colors.blue[300],
//               title: const Text("Usuarios"),
//             ),
//             body: ListView.builder(
//               itemCount: consultausuarios.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return ListTile(title: Text(consultausuarios[index].nombre));
//               },
//             ),
//           );
//         });
//   });
// }

// ////////////////////////////////////////////////

import 'package:ecomerce/src/controllers/UserController.dart';
import 'package:flutter/material.dart';

void ModalUsuario(BuildContext context) {
  // Llamada a la función consultUsers() para obtener la lista de usuarios
  consultUsers().then((consultausuarios) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Scaffold(
            
            appBar: AppBar(
              actions: const [
                Padding(padding: EdgeInsets.all(8), child: Icon(Icons.event)),
              ],
              backgroundColor: Colors.blue[300],
              title: const Text("Usuarios"),
            ),
            body: ListView.builder(
              itemCount: consultausuarios.length,
              itemBuilder: (BuildContext context, int index) {
                final user = consultausuarios[index];
                return ListTile(
                  title: Text(user.nombre),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          _updateUser(context, user);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          _deleteUser(context, user);
                        },
                      ),
                    ],
                  ),
                );
              },
            ));
      },
    );
  });
}

void _updateUser(BuildContext context, Users user) {
  // Extrae el ID del usuario
  String userId = user.id;

  // Implementa la lógica de actualización aquí
  print('Actualizar usuario con ID: $userId y nombre: ${user.nombre}');

  // Mostrar un diálogo para actualizar la información del usuario
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Actualizar Usuario'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: TextEditingController(text: user.nombre),
              decoration: InputDecoration(labelText: 'Nombre'),
              onChanged: (value) {
                // Actualiza el nombre del usuario en tu aplicación
              },
            ),
            TextField(
              controller: TextEditingController(text: user.nombre),
              decoration: InputDecoration(labelText: 'correo'),
              onChanged: (value) {
                // Actualiza el nombre del usuario en tu aplicación
              },
            ),
            TextField(
              controller: TextEditingController(text: user.nombre),
              decoration: InputDecoration(labelText: 'Nombre'),
              onChanged: (value) {
                // Actualiza el nombre del usuario en tu aplicación
              },
            ),
            // Puedes añadir más campos si es necesario
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Implementa la lógica para guardar los cambios
              Navigator.of(context).pop();
            },
            child: Text('Guardar'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancelar'),
          ),
        ],
      );
    },
  );
}


void _deleteUser(BuildContext context, Users user) {
  // Extrae el ID del usuario
  String userId = user.id;
  print('Eliminar usuario con ID: $userId y nombre: ${user.nombre}');
  
  // Llama a la función deleteUsers con el ID del usuario
  deleteUsers(userId).then((success) {
    if (success) {
      // Mostrar un mensaje de éxito o actualizar la UI
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Usuario eliminado con éxito')),
      );
    } else {
      // Mostrar un mensaje de error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al eliminar el usuario')),
      );
    }
  }).catchError((error) {
    // Manejar errores en la eliminación
    print('Error: $error');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error al eliminar el usuario')),
    );
  });
}













// ///////////////////////////////////////////////////////

// void ModalUsuario(BuildContext context) {
//   consultUsers().then((consultausuarios) {
//     showModalBottomSheet(
//       context: context,
//       builder: (context) {
//         return Scaffold(
//           appBar: AppBar(
//             actions: const [
//               Padding(padding: EdgeInsets.all(8), child: Icon(Icons.event)),
//             ],
//             backgroundColor: const Color.fromARGB(255, 20, 15, 16),
//             title: const Text("Usuarios"),
//           ),
//           body: ListView.builder(
//             itemCount: consultausuarios.length,
//             itemBuilder: (BuildContext context, int index) {
//               return ListTile(title: Text(consultausuarios[index].nombre));
//             },
//           ),
//         );
//       },
//     );
//   }).catchError((error) {
//     print("Error consulting users: $error");
//   });
// }



