import 'package:flutter/cupertino.dart';
import 'package:lore_legends_app/components/characterCard.dart';

class CharacterInherited extends InheritedWidget {
  CharacterInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<characterCard> character = [
    characterCard("Ahri", "Vastaya", 2, "Mago", "assets/images/ahri.jpg"),
    characterCard("Evelyn", "Demônio", 4, "Assasino", "assets/images/evelyn.jpg"),
    characterCard("Ashe", "Humano", 4, "Atirador", "assets/images/ashe.jpg"),
    characterCard("Mordekaiser", "Humano", 4, "Necromancer", "assets/images/mordekaiser.jpg")
  ];

  void newCharacter(String name, String race, String className, int strength, String image){
    character.add(characterCard(name, race, strength, className, image));
  }

  static CharacterInherited of(BuildContext context) {
    final CharacterInherited? result =
        context.dependOnInheritedWidgetOfExactType<CharacterInherited>();
    assert(result != null, 'No CharacterInherited found in context');

    return result!;
  }

  @override
  bool updateShouldNotify(CharacterInherited old) {
    return old.character.length != character.length;
  }
}
