import 'package:flutter/material.dart';

import '../components/characterCard.dart';

class initialScreen extends StatefulWidget {
  const initialScreen({super.key});

  @override
  State<initialScreen> createState() => _initialScreenState();
}

class _initialScreenState extends State<initialScreen> {
  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text(
          "Lore Legends",
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Color(0xFF1A1A1A),
        child: AnimatedOpacity(
          opacity: opacity ? 1 : 0,
          duration: const Duration(milliseconds: 1000),
          child: ListView(
            children: const [
              characterCard("Ahri", "Vastaya", 2, "Mago", "assets/images/ahri.jpg"),
              characterCard("Evelyn", "Demônio", 4, "Assasino", "assets/images/evelyn.jpg"),
              characterCard("Ashe", "Humano", 4, "Atirador", "assets/images/ashe.jpg"),
              characterCard("Mordekaiser", "Humano", 4, "Necromancer", "assets/images/mordekaiser.jpg")
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: opacity ? Colors.black : Colors.white,
        child: Icon(
          Icons.remove_red_eye,
          color: opacity ? Colors.white : Colors.black,
        ),
        onPressed: (){
          setState(() {
            opacity = !opacity;
          });
        },
      ),
    );
  }
}
