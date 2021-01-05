import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/api/pokeapi.dart';
import 'package:flutter_pokedex/pages/list_page.dart';
import 'package:flutter_pokedex/poke/pokemon.dart';

void main() => runApp(PokeApp());

class PokeApp extends StatefulWidget {
  @override
  _PokeAppState createState() => _PokeAppState();
}

class _PokeAppState extends State<PokeApp> {
  //todo
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Rubik'),
      home: ListPage(),
    );
  }
}

