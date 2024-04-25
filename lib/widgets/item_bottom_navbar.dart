import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    //BOTTOM APPBAR
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 70,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Row(
            children: [
              //Texto
              Text(
                "Total",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              //Separación
              SizedBox(
                width: 15,
              ),
              //Precio
              Text(
                "43,50€",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              )
            ],
          ),
          //Botón sin acción
          ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 18),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
              icon: const Icon(CupertinoIcons.cart),
              label: const Text(
                "Añadir al carro",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ))
        ]),
      ),
    );
  }
}
