import 'package:examen/texto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PizzaCustomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: texto("Develop´s Pizzas"),
        trailing: const CircleAvatar(
          radius: 18,
          backgroundColor: Color.fromRGBO(91, 231, 194, 1),
          child: Icon(Icons.shopping_bag_outlined, color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        height: double.infinity,
        child: Column(
          children: [
            Container(
              color: const Color.fromRGBO(231, 241, 236, 1),
              width: double.infinity,
              child: Column(children: [
                texto("Pepperoni Pizzas"),
                texto("Hot pizza with peper", transparencia: 0.5),
                Container(
                  padding: const EdgeInsets.all(25),
                  child: const Image(
                      image: AssetImage("lib/assets/images/pizza.png"),
                      height: 250),
                ),
                texto("Made by", transparencia: 0.5),
                texto("Diego Hernández Jiménez", transparencia: 0.5),
              ]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                texto(
                  "Sizes",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemBoton(boton: botones[0]),
                    ItemBoton(boton: botones[1]),
                    ItemBoton(boton: botones[2]),
                    ItemBoton(boton: botones[3]),
                  ],
                ),
                texto("Ingredients"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemBoton(boton: botones[7]),
                    ItemBoton(boton: botones[5]),
                    ItemBoton(boton: botones[6]),
                    ItemBoton(boton: botones[4])
                  ],
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(231, 241, 236, 1))),
                      child: const Text("Buy now",
                          style:
                              TextStyle(color: Color.fromRGBO(40, 95, 80, 1))),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ItemBoton extends StatelessWidget {
  final Boton boton;
  Color color;
  BorderSide borde;
  ItemBoton(
      {required this.boton,
      this.color = const Color.fromRGBO(255, 255, 255, 1),
      this.borde = const BorderSide(width: 1)}) {
    if (boton.presionado) {
      color = const Color.fromRGBO(255, 193, 7, 1);
      borde = const BorderSide(style: BorderStyle.none);
    }
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 30,
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
            side: MaterialStatePropertyAll(borde),
            padding: const MaterialStatePropertyAll(EdgeInsets.all(5))),
        child: boton.contenido,
      ),
    );
  }
}

class Boton {
  final bool presionado;
  final Widget contenido;
  Boton({required this.contenido, required this.presionado});
}

List<Boton> botones = [
  Boton(
      contenido: const Text("S", style: TextStyle(color: Colors.black)),
      presionado: false),
  Boton(
      contenido: const Text("L", style: TextStyle(color: Colors.black)),
      presionado: true),
  Boton(
      contenido: const Text("X", style: TextStyle(color: Colors.black)),
      presionado: false),
  Boton(
      contenido: const Text("XL", style: TextStyle(color: Colors.black)),
      presionado: false),
  Boton(
      contenido:
          const Image(image: AssetImage("lib/assets/images/ingredient1.png")),
      presionado: false),
  Boton(
      contenido:
          const Image(image: AssetImage("lib/assets/images/ingredient2.png")),
      presionado: false),
  Boton(
      contenido:
          const Image(image: AssetImage("lib/assets/images/ingredient3.png")),
      presionado: true),
  Boton(
      contenido:
          const Image(image: AssetImage("lib/assets/images/ingredient4.png")),
      presionado: false)
];
