import 'package:dio/dio.dart';
import 'package:rick_and_morty/domain/model/character/gateway/multi_character_gateway.dart';
import 'package:rick_and_morty/domain/model/character/multi_characters.dart';

import 'helpers/maps/character/multi_character_mapper.dart';

class MultiCharacterApi extends MultiCharacterGateway {
  final MultiCharacterMapper _multiCharacterMapper = MultiCharacterMapper();

  @override
  Future<MultiCharacter> getAll(String page) async {
    Dio dio = Dio();
    final response =
        await dio.get('https://rickandmortyapi.com/api/character/?page=$page');
    if (response.statusCode == 200) {
      return _multiCharacterMapper
          .fromMap(response.data as Map<String, dynamic>);
    } else {
      throw Exception('No se pudo completar la petición');
    }
  }
}
