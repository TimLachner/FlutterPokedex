import 'package:freezed_annotation/freezed_annotation.dart';
part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
abstract class Pokemon with _$Pokemon {
  factory Pokemon({
    @JsonValue(false) bool loaded,
    @JsonValue('') String url,
    String name,
    int weight,
    int height,
    Map<String, dynamic> sprites,
}) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) => _$PokemonFromJson(json);
}
