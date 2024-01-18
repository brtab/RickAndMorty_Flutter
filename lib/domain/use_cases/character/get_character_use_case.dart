import 'package:rick_and_morty/domain/model/character/gateway/character_gateway.dart';
import '../../model/character/character.dart';

class GetCharacterUseCase {
  final CharacterGateway _characterGateway;

  GetCharacterUseCase(this._characterGateway);

  Future<Character> getCharacterByID(String id) async {
    return _characterGateway.getById(id);
  }
}
