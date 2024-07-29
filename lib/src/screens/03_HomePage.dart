// //////////////////////////////
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.orange[700],
      foregroundColor: Colors.white,
      title: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Mercado libre Colombia"),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/perfil');
              },
             icon: CircleAvatar(
                  radius: 20, 
                  
                  backgroundImage: const NetworkImage('https://st4.depositphotos.com/15648834/23779/v/1600/depositphotos_237795804-stock-illustration-unknown-person-silhouette-profile-picture.jpg'),
                  child: Icon(
                    Icons.person,
                    color: Colors.purple[900],
                    size: 34, 
                  ),
                ),
            ),
          ],
        ),
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Buscar Producto",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications),
                ),
              ],
            ),

            // //////////////////////////////////////
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0,
                ),
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    // decoration: BoxDecoration(
                    //   color: Colors.white,
                    //   borderRadius: BorderRadius.circular(10.0),
                    //   boxShadow: [
                    //     BoxShadow(
                    //       color: Colors.grey.withOpacity(0.5),
                    //       spreadRadius: 1,
                    //       blurRadius: 3,
                    //       offset: const Offset(0, 2),
                    //     ),
                    //   ],
                    // ),

                    child: ElevatedButton(
                      // color: Colors.white,
                      onPressed: () {
                        print('Click en ${categories[index]['titulo']}');
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(categories[index]['icono'], size: 50.0),
                          const SizedBox(height: 10.0),
                          Text(
                            categories[index]['titulo'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    
                  );
                  
                },
              ),
            ),
            // const SizedBox(height: 40),

          ],
        ),
      ),

      bottomNavigationBar:BottomNavigationBar(
        items: [

          BottomNavigationBarItem(
          icon: Icon(Icons.home, size:30.0, color:Colors.orange[700]),
          label: "Inicio"),
          BottomNavigationBarItem(
          icon: Icon(Icons.shop, size:30.0, color:Colors.orange[700]),
          label: "Compra"),
          BottomNavigationBarItem(
          icon: Icon(Icons.exit_to_app, size:30.0, color:Colors.orange[700]),
          label: "Salir"),

        ],
      ),
    );
  }
}

final List<Map<String, dynamic>> categories = [
  {'codigo': '001', 'icono': Icons.home, 'titulo': 'Hogar y muebles'},
  {'codigo': '002', 'icono': Icons.phone_android, 'titulo': 'Celulares'},
  {'codigo': '003', 'icono': Icons.checkroom, 'titulo': 'Ropa y accesorios'},
  {'codigo': '004', 'icono': Icons.computer, 'titulo': 'Computación'},
  {'codigo': '005', 'icono': Icons.kitchen, 'titulo': 'Electro Hogar'},
  {'codigo': '006', 'icono': Icons.sports_soccer, 'titulo': 'Deportes'},
  {'codigo': '007', 'icono': Icons.build, 'titulo': 'Herramientas'},
  {'codigo': '008', 'icono': Icons.brush, 'titulo': 'Belleza'},
  {'codigo': '009', 'icono': Icons.tv, 'titulo': 'Electrónica y audio'},
  {'codigo': '010', 'icono': Icons.fastfood, 'titulo': 'Alimentos y bebidas'},
  {'codigo': '011', 'icono': Icons.pets, 'titulo': 'Animales y mascotas'},
];




