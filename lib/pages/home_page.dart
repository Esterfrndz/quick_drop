import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/categories_widget.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/newest_item_widget.dart';
import '../widgets/popular_items_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const AppBarWidget(),

          // BARRA DE BÚSQUEDA

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    //Icono Search
                    const Icon(CupertinoIcons.search, color: Colors.purple),
                    const SizedBox(width: 10),
                    Expanded(
                      //Texto
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Busca tu comida favorita",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    //Icono filter list
                    const Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ),

          // TITULO 'CATEGORÍAS'

          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Categorias",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          //WIDGET SECCIÓN CATEGORÍAS
          const CategoriesWidget(),

          // TITULO 'SITIOS POPULARES'
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Sitios Populares",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),

          //WIDGET SECCIÓN 'SITIOS POPULARES'
          const PopularItemsWidget(),

          // TITULO 'EN TENDENCIA'
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "En tendencia",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),

          //WIDGET SECCIÓN 'EN TENDENCIA'
          const NewestItemsWidget(),
        ],
      ),

      //WIDGET PANEL DESLIZANTE
      drawer: const DrawerWidget(),

      //BOTÓN FLOTANTE DE COMPRA
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "cartPage");
        },
        backgroundColor: Colors.deepPurple.withOpacity(1.0),
        child: const Icon(CupertinoIcons.cart, size: 20, color: Colors.white),
      ),
    );
  }
}
