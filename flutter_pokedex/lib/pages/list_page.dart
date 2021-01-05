import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_pokedex/api/pokeapi.dart';
import 'package:flutter_pokedex/poke/pokemon.dart';




class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}


class _ListPageState extends State<ListPage> {

  var _pokelist = <Pokemon>[];

  @override
  void initState() {
    PokeApi().getAll().then((l) => setState(() => _pokelist = l));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pokedex"), backgroundColor: Colors.cyan),
      body: _pokelist.isEmpty ? Center(child: CircularProgressIndicator()) : ListView.builder(
        itemCount: _pokelist.length,
        itemBuilder: (context, index) {
          fetchFull(_pokelist[index]);
          return PokeTile(pokemon: _pokelist[index]);
        },
      ),
    );
  }

  Future<void> fetchFull(Pokemon pokemon) {
    if (pokemon.loaded == null) {
      int index = _pokelist.indexOf(pokemon);
      PokeApi().pokemon(pokemon.name).then((p) {
        if (p != null) {
          setState(() {
            _pokelist[index] = p.copyWith(loaded: true);
          });
        }
      });
    }
  }
}

class PokeTile extends StatelessWidget {
  const PokeTile({Key key, this.pokemon}) : super(key: key);
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      color: Colors.blueGrey,
      child: Row(
        children: [
          CircleAvatar(

            backgroundColor: Colors.white,
            radius: 90,
            backgroundImage: pokemon.loaded != null ? CachedNetworkImageProvider( pokemon.sprites['front_default']) : null,
          ),
          Spacer(),
          Text(pokemon.name),
        ],
      ),
    );
  }
}
