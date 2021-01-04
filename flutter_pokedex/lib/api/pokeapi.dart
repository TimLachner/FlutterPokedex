import 'package:dio/dio.dart';
import 'package:flutter_pokedex/poke/pokemon.dart';

const String baseUrl = 'https://pokeapi.co/api/v2/';

class PokeApi {
  final _client = Dio(BaseOptions(baseUrl: baseUrl));

  //todo
  Future<Pokemon> pokemon(String id) {
    return _client.get('pokemon/$id').then((response) {
      return Pokemon.fromJson(response.data);
    });
  }
}
