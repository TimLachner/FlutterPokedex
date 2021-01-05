// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

/// @nodoc
class _$PokemonTearOff {
  const _$PokemonTearOff();

// ignore: unused_element
  _Pokemon call(
      {@JsonValue(false) bool loaded,
      @JsonValue('') String url,
      String name,
      int weight,
      int height,
      Map<String, dynamic> sprites}) {
    return _Pokemon(
      loaded: loaded,
      url: url,
      name: name,
      weight: weight,
      height: height,
      sprites: sprites,
    );
  }

// ignore: unused_element
  Pokemon fromJson(Map<String, Object> json) {
    return Pokemon.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Pokemon = _$PokemonTearOff();

/// @nodoc
mixin _$Pokemon {
  @JsonValue(false)
  bool get loaded;
  @JsonValue('')
  String get url;
  String get name;
  int get weight;
  int get height;
  Map<String, dynamic> get sprites;

  Map<String, dynamic> toJson();
  $PokemonCopyWith<Pokemon> get copyWith;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res>;
  $Res call(
      {@JsonValue(false) bool loaded,
      @JsonValue('') String url,
      String name,
      int weight,
      int height,
      Map<String, dynamic> sprites});
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res> implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  final Pokemon _value;
  // ignore: unused_field
  final $Res Function(Pokemon) _then;

  @override
  $Res call({
    Object loaded = freezed,
    Object url = freezed,
    Object name = freezed,
    Object weight = freezed,
    Object height = freezed,
    Object sprites = freezed,
  }) {
    return _then(_value.copyWith(
      loaded: loaded == freezed ? _value.loaded : loaded as bool,
      url: url == freezed ? _value.url : url as String,
      name: name == freezed ? _value.name : name as String,
      weight: weight == freezed ? _value.weight : weight as int,
      height: height == freezed ? _value.height : height as int,
      sprites:
          sprites == freezed ? _value.sprites : sprites as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$PokemonCopyWith(_Pokemon value, $Res Function(_Pokemon) then) =
      __$PokemonCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonValue(false) bool loaded,
      @JsonValue('') String url,
      String name,
      int weight,
      int height,
      Map<String, dynamic> sprites});
}

/// @nodoc
class __$PokemonCopyWithImpl<$Res> extends _$PokemonCopyWithImpl<$Res>
    implements _$PokemonCopyWith<$Res> {
  __$PokemonCopyWithImpl(_Pokemon _value, $Res Function(_Pokemon) _then)
      : super(_value, (v) => _then(v as _Pokemon));

  @override
  _Pokemon get _value => super._value as _Pokemon;

  @override
  $Res call({
    Object loaded = freezed,
    Object url = freezed,
    Object name = freezed,
    Object weight = freezed,
    Object height = freezed,
    Object sprites = freezed,
  }) {
    return _then(_Pokemon(
      loaded: loaded == freezed ? _value.loaded : loaded as bool,
      url: url == freezed ? _value.url : url as String,
      name: name == freezed ? _value.name : name as String,
      weight: weight == freezed ? _value.weight : weight as int,
      height: height == freezed ? _value.height : height as int,
      sprites:
          sprites == freezed ? _value.sprites : sprites as Map<String, dynamic>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Pokemon implements _Pokemon {
  _$_Pokemon(
      {@JsonValue(false) this.loaded,
      @JsonValue('') this.url,
      this.name,
      this.weight,
      this.height,
      this.sprites});

  factory _$_Pokemon.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonFromJson(json);

  @override
  @JsonValue(false)
  final bool loaded;
  @override
  @JsonValue('')
  final String url;
  @override
  final String name;
  @override
  final int weight;
  @override
  final int height;
  @override
  final Map<String, dynamic> sprites;

  @override
  String toString() {
    return 'Pokemon(loaded: $loaded, url: $url, name: $name, weight: $weight, height: $height, sprites: $sprites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pokemon &&
            (identical(other.loaded, loaded) ||
                const DeepCollectionEquality().equals(other.loaded, loaded)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.sprites, sprites) ||
                const DeepCollectionEquality().equals(other.sprites, sprites)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loaded) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(sprites);

  @override
  _$PokemonCopyWith<_Pokemon> get copyWith =>
      __$PokemonCopyWithImpl<_Pokemon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonToJson(this);
  }
}

abstract class _Pokemon implements Pokemon {
  factory _Pokemon(
      {@JsonValue(false) bool loaded,
      @JsonValue('') String url,
      String name,
      int weight,
      int height,
      Map<String, dynamic> sprites}) = _$_Pokemon;

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$_Pokemon.fromJson;

  @override
  @JsonValue(false)
  bool get loaded;
  @override
  @JsonValue('')
  String get url;
  @override
  String get name;
  @override
  int get weight;
  @override
  int get height;
  @override
  Map<String, dynamic> get sprites;
  @override
  _$PokemonCopyWith<_Pokemon> get copyWith;
}
