import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:rick_and_morty/presentation/model_view/character_model_view.dart';

import '../../domain/model/character/character.dart';

class ListCharacterView extends StatelessWidget {
  final List<Character> characters;

  ListCharacterView({required this.characters});

  @override
  Widget build(BuildContext context) {
    final element = ListView.builder(
      itemCount: characters.length,
      prototypeItem: CharacterModelView(
        character: characters.first,
      ),
      itemBuilder: (context, index) {
        return CharacterModelView(
          character: characters[index],
        );
      },
    );
    return element;
  }
}
