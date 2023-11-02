import 'package:flutter/material.dart';

import 'package:pokedex/domain/pokemon.model.dart';
import 'package:pokedex/domain/pokemon.repo.dart';

import 'package:pokedex/presentation/_loader.widget.dart';
import 'package:pokedex/presentation/_pokemon.widget.dart';

class PokemonPage extends StatefulWidget {
  const PokemonPage({super.key});

  @override
  State<PokemonPage> createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  late Future<Pokedex> pokemon;

  @override
  void initState() {
    super.initState();
    pokemon = PokemonRepo().getAll();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: pokemon,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: snapshot.data!.pokemon.length,
            itemBuilder: (BuildContext context, int index) {
              return PokemonWidget(pokemon: snapshot.data!.pokemon[index]);
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          );
        }

        if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const LoaderWidget();
      },
    );
  }
}
