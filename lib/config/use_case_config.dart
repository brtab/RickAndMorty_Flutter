import 'package:rick_and_morty/domain/use_cases/character/get_character_use_case.dart';
import 'package:rick_and_morty/infrastructure/driven_adapter/character_api/character_api.dart';

class UseCaseConfig {
  CharacterApi? _characterApi;
  GetCharacterUseCase? getCharacterUseCase;

  UseCaseConfig() {
    _characterApi = CharacterApi();
    getCharacterUseCase = GetCharacterUseCase(_characterApi!);
  }
}
