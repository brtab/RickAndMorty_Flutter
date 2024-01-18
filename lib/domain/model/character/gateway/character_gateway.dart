import '../character.dart';

abstract class CharacterGateway {
  Future<Character> getById(String id);
}