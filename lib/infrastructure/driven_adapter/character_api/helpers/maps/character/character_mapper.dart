import 'package:rick_and_morty/domain/model/character/character.dart';
import 'package:rick_and_morty/infrastructure/driven_adapter/character_api/helpers/maps/common/base_mapper.dart';

class CharacterMapper implements BaseMapper<Character> {
  @override
  Character fromMap(Map<String, dynamic> json) =>
      Character(
        id: json['id'],
        name: json['name'],
        status: json['status'],
        species: json['species'],
        gender: json['gender'],
        type: json['type'],
        image: json['image'],
      );
}