import 'package:dio/dio.dart';
import 'package:rick_and_morty/domain/model/character/character.dart';
import 'package:rick_and_morty/domain/model/character/gateway/character_gateway.dart';
import 'package:rick_and_morty/infrastructure/driven_adapter/character_api/helpers/maps/character/character_mapper.dart';

class CharacterApi extends CharacterGateway {
  final CharacterMapper _characterMapper = CharacterMapper();

  @override
  Future<Character> getById(String id) async {
    Dio dio = Dio();
    final response =
        await dio.get('https://rickandmortyapi.com/api/character/$id');
    if (response.statusCode == 200) {
      return _characterMapper.fromMap(response.data as Map<String, dynamic>);
    } else {
      throw Exception('No se pudo completar la petición');
    }
  }
}
