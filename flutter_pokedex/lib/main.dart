import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/api/pokeapi.dart';
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
      home: HomePage(),
    );
  }
}

/// remove
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pokedex"), backgroundColor: Colors.cyan),
      body: Center(),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var temp = await PokeApi().pokemon('1');
          print(temp);
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}

class PokeTile extends StatelessWidget {
  const PokeTile({Key key, this.pokemon}) : super(key: key);
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CachedNetworkImage(
          imageUrl: pokemon.sprites['front_default'] as String
      ),
    );
  }
}
