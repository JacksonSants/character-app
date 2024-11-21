import 'package:flutter/material.dart';
import 'package:lore_legends_app/components/progressLifePoint.dart';
import 'package:lore_legends_app/components/strengthBar.dart';

class characterCard extends StatefulWidget {
  final String name;
  final String race;
  final String className;
  final int strength;
  final String image;
  const characterCard(this.name, this.race, this.strength, this.className, this.image, {super.key});

  @override
  State<characterCard> createState() => _characterCardState();
}

class _characterCardState extends State<characterCard> {
  int lifePoint = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.only(left: 5, right: 10,),
        height: 250,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFF0A1428)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 150,
                height: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(widget.image,
                    fit: BoxFit.cover,
                  ),
                )
            ),
            SizedBox(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nome: ${widget.name}",
                    style: const TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Text(
                    "Raça: ${widget.race}",
                    style: const TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Text(
                    "Classe: ${widget.className}",
                    style: const TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  strengthBar(widget: widget),
                  SizedBox(
                    width: 220,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        progressLifePoint(lifePoint: lifePoint),
                        SizedBox(
                          width: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      lifePoint++;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    minimumSize: const Size(30,30),
                                    alignment: Alignment.center,
                                    backgroundColor: Colors.amber
                                  ),
                                  child: const Icon(Icons.arrow_drop_up, color: Colors.white,),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      lifePoint--;
                                      if(lifePoint < 0){
                                        lifePoint = 0;
                                      }
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    minimumSize: const Size(30,30),
                                    alignment: Alignment.center,
                                      backgroundColor: Colors.amber
                                  ),
                                  child: const Icon(Icons.arrow_drop_down, color: Colors.white,),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}