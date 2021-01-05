// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pokemon _$_$_PokemonFromJson(Map<String, dynamic> json) {
  return _$_Pokemon(
    loaded: json['loaded'] as bool,
    url: json['url'] as String,
    name: json['name'] as String,
    weight: json['weight'] as int,
    height: json['height'] as int,
    sprites: json['sprites'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$_$_PokemonToJson(_$_Pokemon instance) =>
    <String, dynamic>{
      'loaded': instance.loaded,
      'url': instance.url,
      'name': instance.name,
      'weight': instance.weight,
      'height': instance.height,
      'sprites': instance.sprites,
    };
