import 'package:flutter/cupertino.dart';

import '../../domain/model/character/character.dart';

class CharacterModelView extends StatelessWidget {
  final Character character;

  CharacterModelView({required this.character});

  //CharacterModelView({required this.name, required this.gender, required this.url});

  @override
  Widget build(BuildContext context) {
    final element = Container(
      height: 150,
      width: 310,
      margin: const EdgeInsets.all(10.0),
      child: Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(character.image),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Name: ${character.name}'),
                  Text('Gender: ${character.gender}'),
                ],
              ),
            )
          ],
        ),
      ),
    );
    return element;
  }
}
