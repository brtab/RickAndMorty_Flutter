import 'character.dart';

class MultiCharacter {
  MultiCharacter({required this.info, required this.results});

  Info info;
  List<Character> results;
}

class Info {
  int count;
  int pages;
  String next;
  String? prev;

  Info({
    required this.count,
    required this.pages,
    required this.next,
    this.prev,
  });
}
