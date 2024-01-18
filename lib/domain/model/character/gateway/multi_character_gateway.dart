import '../multi_characters.dart';

abstract class MultiCharacterGateway {
  Future<MultiCharacter> getAll(String page);
}