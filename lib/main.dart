import 'package:flutter/material.dart';
import 'package:lore_legends_app/screens/form_screen.dart';
import 'package:lore_legends_app/screens/initial_screens.dart';

import 'data/character_inherited.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CharacterInherited(child: const initialScreen(),)
    );
  }
}
