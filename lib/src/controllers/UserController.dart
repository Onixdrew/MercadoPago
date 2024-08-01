import 'dart:convert';
import 'package:http/http.dart' as http;



class Users {
  final String id;
  final String nombre;
  final String correo;
  final String password;

  // Constructor requerido para inicializar todos los campos
  Users({
    required this.id,
    required this.nombre,
    required this.correo,
    required this.password,
  });

  // Constructor vacío para inicialización predeterminada
  Users.empty()
      : id = '',
        nombre = '',
        correo = '',
        password = '';

  // Método de fábrica para crear una instancia de Users a partir de un JSON
  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json['_id'] ?? '', // Asegúrate de manejar valores nulos
      nombre: json['nombre'] ?? '',
      correo: json['correo'] ?? '',
      password: json['contraseña'] ?? '', // Cambia esto según el campo real en tu JSON
    );
  }

  // Método para convertir una instancia de User a un JSON
  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'nombre': nombre,
      'correo': correo,
      'contraseña': password, // Cambia esto según el campo real en tu JSON
    };
  }
}





//1. Registrar usuarios

Future<Users> createUsers(String nombre, String correo, String password) async {
  final response = await http.post(
    Uri.parse('https://api-mercadopago.onrender.com/api/agregarUser'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(
      <String, String>{
        "nombre": nombre, 
        "correo": correo, 
        "contraseña": password}),
  );

  if (response.statusCode == 201) {
    return Users.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('No es posible registrarse');
  }
}







/////////////////////////////////////////////
//2. Obtener usuarios

Future<List<Users>> consultUsers() async {
  final response = await http.get(
      Uri.parse('https://api-mercadopago.onrender.com/api/obtenerUser'));
  if (response.statusCode == 201) {
    List<dynamic> jsonList = jsonDecode(response.body);
    return jsonList.map((json) => Users.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load jewelry products'); 
  }
}




/////////////////////////////////////////////
/// 3. eliminar un usuario

Future<Users> deleteUsers(String id) async {
  final http.Response response = await http.delete(
    Uri.parse('https://api-mercadopago.onrender.com/api/eliminarUser/$id'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  if (response.statusCode == 200) {
    return Users.empty();
  } else {
    throw Exception('Failed to delete album.');
  }
}




// //////////////////////////////////////////////////////////////////////

// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class Users {
//   final String id;
//   final String nombre;
//   final String correo;
//   final String password;

//   Users({
//     required this.id,
//     required this.nombre,
//     required this.correo,
//     required this.password,
//   });

//   // Método utilizado para limpiar los objetos
//   Users.empty()
//       : id = '',
//         nombre = '',
//         correo = '',
//         password = '';

//   factory Users.fromJson(Map<String, dynamic> json) {
//     return Users(
//       id: json['_id'],
//       nombre: json['nombre'],
//       correo: json['correo'],
//       password: json['contraseña'],
//     );
//   }
// }

// Future<List<Users>> consultUsers() async {
//   try {
//     final response = await http.get(
//       Uri.parse('https://api-mercadopago.onrender.com/api/obtenerUser'),
//     );

//     if (response.statusCode == 200) {
//       List<dynamic> jsonList = jsonDecode(response.body);
//       return jsonList.map((json) => Users.fromJson(json)).toList();
//     } else {
//       print('Failed to load users: ${response.statusCode}');
//       throw Exception('Failed to load users');
//     }
//   } catch (e) {
//     print('Error: $e');
//     throw Exception('Failed to load users');
//   }
// }

// Future<Users> createUsers(String nombre, String correo, String password) async {
//   try {
//     final response = await http.post(
//       Uri.parse('https://api-mercadopago.onrender.com/api/agregarUser'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//       body: jsonEncode(<String, String>{
//         "nombre": nombre,
//         "correo": correo,
//         "contraseña": password,
//       }),
//     );

//     if (response.statusCode == 201) {
//       return Users.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
//     } else {
//       print('Failed to create user: ${response.statusCode}');
//       throw Exception('No es posible registrarse');
//     }
//   } catch (e) {
//     print('Error: $e');
//     throw Exception('No es posible registrarse');
//   }
// }

// Future<Users> deleteUsers(String id) async {
//   try {
//     final http.Response response = await http.delete(
//       Uri.parse('https://api-mercadopago.onrender.com/api/eliminarUser/$id'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//     );

//     if (response.statusCode == 200) {
//       return Users.empty();
//     } else {
//       print('Failed to delete user: ${response.statusCode}');
//       throw Exception('Failed to delete user');
//     }
//   } catch (e) {
//     print('Error: $e');
//     throw Exception('Failed to delete user');
//   }
// }
