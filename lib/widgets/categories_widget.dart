import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //SCROLL EN HORIZONTAL
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(children: [
          //ITEM 1
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "assets/bend_prime.png",
                  width: 50,
                  height: 50,
                )),
          ),
          //ITEM 2
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "assets/hamburguesa.png",
                  width: 50,
                  height: 50,
                )),
          ),
          //ITEM 3
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "assets/pizza.png",
                  width: 50,
                  height: 50,
                )),
          ),
          //ITEM 4
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "assets/hot-dog.png",
                  width: 50,
                  height: 50,
                )),
          ),
          //ITEM 5
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "assets/frappe.png",
                  width: 50,
                  height: 50,
                )),
          ),
          //ITEM 6
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "assets/fries.png",
                  width: 50,
                  height: 50,
                )),
          ),

//ITEM 7
Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "assets/fries.png",
                  width: 50,
                  height: 50,
                )),
          ),
          
        ]),
      ),
    );
  }
}
