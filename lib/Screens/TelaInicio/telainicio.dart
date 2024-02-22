import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/card.dart';
import 'package:ifood/CustomWidgets/slide.dart';
import 'package:ifood/CustomWidgets/styles.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('R. Ari Barroso, 330', style: textNunitoBold(14)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.red),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                card(185, 80, Colors. deepPurple, "Pet", "/pet.png"),
                const SizedBox(width: 5),
                card(185, 80, Colors. deepPurple, "Mercado", "/mercado.png")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                cardDois(90, 100, Colors. deepPurple[50], "Farmácia", "/farmacia.png"),
                cardDois(90, 100, Colors. deepPurple[50], "Bebidas", "/bebidas.png"),
                cardDois(90, 100, Colors. deepPurple[50], "Sucos", "/sucos.png"),
                cardDois(90, 100, Colors. deepPurple[50], "Pizza", "/pizza.png"),
              ],
            ),
          ),
          const Slide(),
        ],
      ),
    );
  }
}