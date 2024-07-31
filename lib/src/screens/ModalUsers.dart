import 'package:ecomerce/src/controllers/UserController.dart';
import 'package:flutter/material.dart';



 ModalUsuario(BuildContext context) {
  // final consultaUsuarios = consultausuarios();
//  print(consultaUsuarios);

  consultUsers().then((consultausuarios) {
    
    // print(consultausuarios[1].name);
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              actions: const [
                Padding(padding: EdgeInsets.all(8), child: Icon(Icons.event)),
              ],
              backgroundColor: Colors.red[100],
              title: const Text("Usuarios"),
            ),
            body: ListView.builder(
              itemCount: consultausuarios.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text(consultausuarios[index].nombre));
              },
            ),
          );
        });
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



