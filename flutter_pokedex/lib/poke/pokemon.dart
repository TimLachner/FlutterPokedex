import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
abstract class Pokemon with _$Pokemon {
  factory Pokemon({
    String name,
    int weight,
    int height,
    Map<String, String> sprites,
}) = _Pokemon;

  factory Pokemon.fromJson(Map<String, String> json) => _$PokemonFromJson(json);
}
