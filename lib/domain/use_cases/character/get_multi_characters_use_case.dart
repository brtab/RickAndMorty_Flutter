import 'package:rick_and_morty/domain/model/character/gateway/multi_character_gateway.dart';

import '../../model/character/multi_characters.dart';

class GetMultiCharactersUseCase {
  final MultiCharacterGateway _multiCharacterGateway;

  GetMultiCharactersUseCase(this._multiCharacterGateway);

  Future<MultiCharacter> getAllCharacters(String page) async{
    return _multiCharacterGateway.getAll(page);
  }
}