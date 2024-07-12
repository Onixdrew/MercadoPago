// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Elevated Button Example'),
//         ),
//         body: Center(
//           child: CustomElevatedButton(),
//         ),
//       ),
//     );
//   }
// }

// class CustomElevatedButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
     
//         print('Elevated Button Pressed');
//       },
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.purple[700], // Color de fondo
//         foregroundColor: Colors.white, // Color del texto
//         shadowColor: Colors.black, // Color de la sombra
//         elevation: 5, // Elevación
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12), // Bordes redondeados
//         ),
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Padding
//         textStyle: TextStyle(
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       child: Text('Haz click'),
//     );
//   }
// }



// /////////////////////////// colunm

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Column Alignment Example'),
//         ),
//         body: Center(
//           child: CustomColumn(),
//         ),
//       ),
//     );
//   }
// }

// class CustomColumn extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(20), // Márgenes alrededor del contenedor
//       padding: EdgeInsets.all(20), // Espaciado interno del contenedor
//       decoration: BoxDecoration(
//         color: Colors.grey[200], // Color de fondo del contenedor
//         borderRadius: BorderRadius.circular(15), // Bordes redondeados
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black26, // Color de la sombra
//             blurRadius: 10, // Radio de desenfoque
//             offset: Offset(0, 5), // Desplazamiento de la sombra
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start, // Alinea los widgets al inicio del eje horizontal
//         mainAxisAlignment: MainAxisAlignment.center, // Centra los widgets en el eje vertical
//         children: <Widget>[
//           Text(
//             'Item 1',
//             style: TextStyle(
//               fontSize: 24,
//               color: Colors.blue, // Color del texto
//               fontWeight: FontWeight.bold, // Grosor del texto
//             ),
//           ),
//           SizedBox(height: 10), // Espacio entre los elementos
//           Text(
//             'Item 2',
//             style: TextStyle(
//               fontSize: 24,
//               color: Colors.green, // Color del texto
//               fontWeight: FontWeight.bold, // Grosor del texto
//             ),
//           ),
//           SizedBox(height: 10), // Espacio entre los elementos
//           Text(
//             'Item 3',
//             style: TextStyle(
//               fontSize: 24,
//               color: Colors.red, // Color del texto
//               fontWeight: FontWeight.bold, // Grosor del texto
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// /////////////////////////// TextField 

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Search Field Example'),
//         ),
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: SearchField(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SearchField extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(80.0),
//       child: TextField(
//         decoration: InputDecoration(
//           prefixIcon: Icon(Icons.search), // Icono de prefijo
//           hintText: 'Buscar Producto', // Texto de sugerencia
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(12), // Bordes redondeados
//           ),
//           filled: true, // Fondo rellenado
//           fillColor: Colors.grey[200], // Color de fondo
//         ),
//       ),
//     );
//   }
// }


// /////////////////////////// form


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Formulario de Ejemplo'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: MyForm(),
//         ),
//       ),
//     );
//   }
// }

// class MyForm extends StatefulWidget {
//   @override
//   _MyFormState createState() => _MyFormState();
// }

// class _MyFormState extends State<MyForm> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _textController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           TextFormField(
//             controller: _textController,
//             decoration: InputDecoration(
//               labelText: 'Nombre',
//               hintText: 'Introduce tu nombre',
//               border: OutlineInputBorder(),
//             ),
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Por favor, introduce un nombre';
//               }
//               return null;
//             },
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {
//               if (_formKey.currentState!.validate()) {
//                 // Si el formulario es válido, muestra un Snackbar
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text('Formulario Válido')),
//                 );
//               }
//             },
//             child: Text('Enviar'),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _textController.dispose();
//     super.dispose();
//   }
// }


// /////////////////////////// SingleChildScrollView 

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('SingleChildScrollView Example'),
//         ),
//         body: SingleChildScrollView(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(
//                 'Flutter',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10),
//               Image.network(
//                 'https://cdn.prod.website-files.com/5f841209f4e71b2d70034471/60bb4a2e143f632da3e56aea_Flutter%20app%20development%20(2).png',
//                 height: 200,
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Flutter es un framework de UI desarrollado por Google para construir aplicaciones nativas para iOS, Android, Web y Desktop desde una sola base de código.',
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Dart',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10),
//               Image.network(
//                 'https://sacavix.com/wp-content/uploads/2020/10/why-google-choose-dart-not-any-other-language.jpg',
//                 height: 200,
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Dart es el lenguaje de programación en el que está basado Flutter. Es un lenguaje optimizado para el desarrollo de interfaces de usuario rápidas en cualquier plataforma.',
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Widgets',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10),
//               Image.network(
//                 'https://flutter.dev/assets/homepage/carousel/slide_2-bg-ef6e05c7c54bfb7cf644c28c0b16d97f37b9f4c1542cf70a2c2f4b3c50b090c4.jpg',
//                 height: 200,
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Los widgets son los componentes básicos de una aplicación Flutter. Cada elemento de la interfaz de usuario es un widget, incluidos los controles, el diseño y los efectos.',
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// /////////////////////////// formValidacion


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Formulario Complejo'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: ComplexForm(),
//         ),
//       ),
//     );
//   }
// }

// class ComplexForm extends StatefulWidget {
//   @override
//   _ComplexFormState createState() => _ComplexFormState();
// }

// class _ComplexFormState extends State<ComplexForm> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             TextFormField(
//               controller: _nameController,
//               decoration: InputDecoration(
//                 labelText: 'Nombre',
//                 hintText: 'Introduce tu nombre',
//                 border: OutlineInputBorder(),
//                 prefixIcon: Icon(Icons.person),
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Por favor, introduce un nombre';
//                 }
//                 return null;
//               },
//             ),
//             SizedBox(height: 20),
//             TextFormField(
//               controller: _emailController,
//               decoration: InputDecoration(
//                 labelText: 'Correo Electrónico',
//                 hintText: 'Introduce tu correo electrónico',
//                 border: OutlineInputBorder(),
//                 prefixIcon: Icon(Icons.email),
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Por favor, introduce un correo electrónico';
//                 } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
//                   return 'Introduce un correo electrónico válido';
//                 }
//                 return null;
//               },
//             ),
//             SizedBox(height: 20),
//             TextFormField(
//               controller: _phoneController,
//               decoration: InputDecoration(
//                 labelText: 'Número de Teléfono',
//                 hintText: 'Introduce tu número de teléfono',
//                 border: OutlineInputBorder(),
//                 prefixIcon: Icon(Icons.phone),
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Por favor, introduce un número de teléfono';
//                 } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
//                   return 'Introduce un número de teléfono válido (10 dígitos)';
//                 }
//                 return null;
//               },
//             ),
//             SizedBox(height: 20),
//             TextFormField(
//               controller: _passwordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Contraseña',
//                 hintText: 'Introduce tu contraseña',
//                 border: OutlineInputBorder(),
//                 prefixIcon: Icon(Icons.lock),
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Por favor, introduce una contraseña';
//                 } else if (value.length < 6) {
//                   return 'La contraseña debe tener al menos 6 caracteres';
//                 }
//                 return null;
//               },
//             ),
//             SizedBox(height: 20),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text('Formulario Válido')),
//                     );
//                   }
//                 },
//                 child: Text('Enviar'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _phoneController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }
// }


/////////////////////////////////MercadoLibre


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Productos'),
        ),
        body: ProductList(),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Laptop XYZ',
      description: 'Laptop de alto rendimiento con 16GB de RAM y 512GB SSD.',
      price: 1200.00,
      imageUrl: 'https://images.unsplash.com/photo-1560464235-dbe97d17d93b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDJ8fGxhcHRvcHxlbnwwfHx8fDE2NzEyMzU2MDE&ixlib=rb-1.2.1&q=80&w=1080',
    ),
    Product(
      name: 'Smartphone ABC',
      description: 'Smartphone con cámara de 48MP y 128GB de almacenamiento.',
      price: 800.00,
      imageUrl: 'https://images.unsplash.com/photo-1546492281-6f6b8b4a53a6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDN8fHNhbXJ0cGhvbmV8ZW58MHx8fDE2NzEyMzU2MDE&ixlib=rb-1.2.1&q=80&w=1080',
    ),
    Product(
      name: 'Auriculares Bluetooth',
      description: 'Auriculares inalámbricos con cancelación de ruido.',
      price: 150.00,
      imageUrl: 'https://images.unsplash.com/photo-1583286858602-83eaf0e87a5e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDJ8fGF1cmljdWxhcnxlbnwwfHx8fDE2NzEyMzU2MDE&ixlib=rb-1.2.1&q=80&w=1080',
    ),
    Product(
      name: 'Reloj Inteligente',
      description: 'Reloj inteligente con monitor de frecuencia cardíaca y GPS.',
      price: 200.00,
      imageUrl: 'https://images.unsplash.com/photo-1590645944480-80e050d36707?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDJ8fHJlcG9ydHxlbnwwfHx8fDE2NzEyMzU2MDE&ixlib=rb-1.2.1&q=80&w=1080',
    ),
    Product(
      name: 'Televisor 4K',
      description: 'Televisor LED 4K de 55 pulgadas con tecnología HDR.',
      price: 600.00,
      imageUrl: 'https://images.unsplash.com/photo-1604442515180-24b39e015b87?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDJ8fHRlbGV2aXNvcnxlbnwwfHx8fDE2NzEyMzU2MDE&ixlib=rb-1.2.1&q=80&w=1080',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.network(product.imageUrl, width: 100, fit: BoxFit.cover),
            title: Text(product.name, style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(product.description),
            trailing: Text('\$${product.price.toStringAsFixed(2)}', style: TextStyle(color: Colors.green)),
          ),
        );
      },
    );
  }
}

class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}
