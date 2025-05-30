import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/model_view/list_character_view.dart';

Widget asyncSnapshotMultiHelper(AsyncSnapshot snapshot) {
  Widget element = Container();
  if (snapshot.hasError) {
    throw Exception('Snapshot Error');
  } else {
    if (snapshot.connectionState == ConnectionState.waiting) {
      element = Container(
        height: 150,
        width: 300,
        margin: const EdgeInsets.all(10.0),
        child: const Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
          ],
        ),
      );
    } else if (snapshot.connectionState == ConnectionState.done) {
      element = ListCharacterView(characters: snapshot.data);
    }
  }
  return element;
}
