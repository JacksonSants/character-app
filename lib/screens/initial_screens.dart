import 'package:flutter/material.dart';
import 'package:lore_legends_app/screens/form_screen.dart';

import '../components/characterCard.dart';

class initialScreen extends StatefulWidget {
  const initialScreen({super.key});

  @override
  State<initialScreen> createState() => _initialScreenState();
}

class _initialScreenState extends State<initialScreen> {
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
        child: ListView(
          children: const [
            characterCard(
                "Ahri", "Vastaya", 2, "Mago", "assets/images/ahri.jpg"),
            characterCard(
                "Evelyn", "Demônio", 4, "Assasino", "assets/images/evelyn.jpg"),
            characterCard(
                "Ashe", "Humano", 4, "Atirador", "assets/images/ashe.jpg"),
            characterCard("Mordekaiser", "Humano", 4, "Necromancer",
                "assets/images/mordekaiser.jpg")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(
                  builder: (context) => FormScreen()));
        },
      ),
    );
  }
}
