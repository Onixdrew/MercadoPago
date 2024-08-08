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
  TextEditingController nombreController =
      TextEditingController(text: user.nombre);
  TextEditingController correoController =
      TextEditingController(text: user.correo);
  TextEditingController passwordController =
      TextEditingController(text: user.password);

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Actualizar Usuario'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nombreController,
              decoration: const InputDecoration(labelText: 'Nombre'),
            ),
            TextField(
              controller: correoController,
              decoration: const InputDecoration(labelText: 'Correo'),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              String updatedNombre = nombreController.text;
              String updatedCorreo = correoController.text;
              String updatedPassword = passwordController.text;

              actualizarUsers(
                user.id,
                updatedNombre,
                updatedCorreo,
                updatedPassword,
              ).then((updatedUser) {
                Navigator.of(context).pop();// Cierra el diálogo
                 

                if (updatedUser.id.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Usuario actualizado con éxito')),
                  );
                  

                  // // Refrescar el modal después de la eliminación exitosa
              
                  // ModalUsuario(context); // Volver a abrir el modal con la lista actualizada
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Error al actualizar el usuario')),
                  );
                }
              }).catchError((error) {
                print('Error: $error');
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Error al actualizar el usuario')),
                );
              });
            },
            child: const Text('Guardar'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancelar'),
          ),
        ],
      );
    },
  );
}





void _deleteUser(BuildContext context, Users user) {
  String userId = user.id;
  print('Eliminar usuario con ID: $userId y nombre: ${user.nombre}');

  deleteUsers(userId).then((deletedUser) {
    if (deletedUser.id.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Usuario eliminado con éxito')),
      );

      // Refrescar el modal después de la eliminación exitosa
      // Navigator.pop(context); // Cerrar el modal actual
      ModalUsuario(context); // Volver a abrir el modal con la lista actualizada
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al eliminar el usuario')),
      );
    }
  }).catchError((error) {
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



