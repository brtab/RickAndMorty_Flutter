import 'package:rick_and_morty/infrastructure/driven_adapter/character_api/helpers/maps/common/base_mapper.dart';

import '../../../../../../domain/model/character/multi_characters.dart';

class MultiCharacterMapper implements BaseMapper<MultiCharacter> {
  @override
  fromMap(Map<String, dynamic> json) =>
      MultiCharacter(
          info: json['info'],
          results: json['results'],
      );

}