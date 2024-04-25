import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../widgets/app_bar_widget2.dart';
import '../widgets/item_bottom_navbar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        //LIST VIEW
        child: ListView(
          children: [
            //APPBAR
            const AppBarWidget2(),
            Padding(
              padding: const EdgeInsets.all(16),
              //IMAGEN DEL PRODUCTO
              child: Image.asset(
                "assets/pizza2.png",
                height: 200,
              ),
            ),
            //ARC
            Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: 30,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //RATING
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => const Icon(
                              Icons.fastfood_rounded,
                              color: Colors.deepPurple,
                            ),
                            onRatingUpdate: (index) {},
                          ),
                          //PRECIO
                          const Text(
                            "15€",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //TITULO
                          const Text(
                            "Pizza Pepperoni",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 90,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //INDICADOR CANTIDAD
                                Icon(CupertinoIcons.minus,
                                    color: Colors.white, size: 20),
                                Text(
                                  "2",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  CupertinoIcons.plus,
                                  color: Colors.white,
                                  size: 20,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      //DESCRIPCIÓN
                      child: Text(
                        "¡Deléitate con nuestra clásica pizza de pepperoni! Preparada con una base de masa crujiente y cubierta con una generosa capa de salsa de tomate casera, esta pizza está cargada de sabores intensos y texturas irresistibles. ",
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //TIEMPO DE ESPERA
                          Text(
                            "Tiempo de espera:",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Icon(
                                  CupertinoIcons.clock,
                                  color: Colors.deepPurple,
                                ),
                              ),
                              Text(
                                "30 Minutos",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
      //BARRA NAVEGACIÓN
      bottomNavigationBar: const ItemBottomNavBar(),
    );
  }
}
