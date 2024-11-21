import 'package:flutter/material.dart';

class progressLifePoint extends StatelessWidget {
  const progressLifePoint({
    super.key,
    required this.lifePoint,
  });

  final int lifePoint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pontos de vida: $lifePoint",
            style: const TextStyle(color: Colors.white, fontSize: 17, overflow: TextOverflow.ellipsis),
          ),
          SizedBox(
            width: 140,
            child: LinearProgressIndicator(color: Colors.white, value: lifePoint/100,),)
        ],
      ),
    );
  }
}
