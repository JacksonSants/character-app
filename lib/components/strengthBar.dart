import 'package:flutter/material.dart';
import 'characterCard.dart';

class strengthBar extends StatefulWidget {
  const strengthBar({
    super.key,
    required this.widget,
  });

  final characterCard widget;

  @override
  State<strengthBar> createState() => _strengthBarState();
}

class _strengthBarState extends State<strengthBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Força:",
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        Icon(Icons.star, color: (widget.widget.strength >= 1) ? Colors.amber : Colors.amber[100], size: 20,),
        Icon(Icons.star, color: (widget.widget.strength >= 2) ? Colors.amber : Colors.amber[100], size: 20,),
        Icon(Icons.star, color: (widget.widget.strength >= 3) ? Colors.amber : Colors.amber[100], size: 20,),
        Icon(Icons.star, color: (widget.widget.strength >= 4) ? Colors.amber : Colors.amber[100], size: 20,),
        Icon(Icons.star, color: (widget.widget.strength >= 5) ? Colors.amber : Colors.amber[100], size: 20,),
      ],
    );
  }
}