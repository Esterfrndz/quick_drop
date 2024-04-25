import 'package:flutter/material.dart';
import 'package:quick_drop/pages/cart_page.dart';
import 'package:quick_drop/pages/home_page.dart';
import 'package:quick_drop/pages/item_page.dart';
import 'package:quick_drop/pages/item_page2.dart';
import 'package:quick_drop/pages/item_page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QuickDrop',
      theme: ThemeData(
        // Tema de la aplicación
          scaffoldBackgroundColor: Colors.black26),
      home: const MainPage(), // La página inicial de la aplicación
      // Rutas
      routes: {
        '/home': (context) => const HomePage(),
        'cartPage': (context) => const CartPage(),
        'itemPage': (context) => const ItemPage(),
        'itemPage2': (context) => const ItemPage2(),
        'itemPage3': (context) => const ItemPage3(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                //Fondo
                image: AssetImage("assets/background.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            // Ajusta el tamaño del contenedor
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          const Positioned(
            top: 250,
            left: 0,
            right: 0,
            child: Center(
              //Titulo
              child: Text(
                "Food at home",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 530,
            left: 0,
            right: 0,
            child: Center(
              //Subtitulo
              child: Text(
                "Just in a click",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 430,
            left: 0,
            right: 0,
            child: Center(
              //Botón
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.deepPurple),
                ),
                //Texto del botón
                child: const Text(
                  "PIDE YA",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 600,
            left: 0,
            right: 0,
            child: Center(
              //Logo
              child: Image.asset(width: 200, 'assets/logo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
