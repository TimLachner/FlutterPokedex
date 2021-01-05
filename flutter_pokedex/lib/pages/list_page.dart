import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_pokedex/api/pokeapi.dart';
import 'package:flutter_pokedex/poke/pokemon.dart';




class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}


class _ListPageState extends State<ListPage> {
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
