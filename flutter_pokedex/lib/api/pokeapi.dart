import 'package:dio/dio.dart';
import 'package:flutter_pokedex/poke/pokemon.dart';

const String baseUrl = 'https://pokeapi.co/api/v2/';

class PokeApi {
  final _client = Dio(BaseOptions(baseUrl: baseUrl));

  //todo
  Future<Pokemon> pokemon(String id) async {
    return _client.get('/pokemon/$id').then((response) {
      return Pokemon.fromJson(response.data as Map<String, dynamic>);
    });
  }

  Future<List<Pokemon>> getAll({int limit = 100, int offset = 0}) {
    return _client.get(
      '/pokemon',
      queryParameters: <String, dynamic>{
        'limit': limit,
        'offset': offset,
      },
    ).then((response) {
      return (response.data['results'] as List).map((e) => Pokemon.fromJson(e)).toList();
    });
  }
}



