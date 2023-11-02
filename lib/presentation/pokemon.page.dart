import 'package:flutter/material.dart';

import 'package:pokedex/presentation/_pokemon.widget.dart';

class PokemonPage extends StatefulWidget {
  const PokemonPage({super.key});

  @override
  State<PokemonPage> createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Column(
        children: [
          PokemonWidget(
              thumbnail:
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/Pikachu.png',
              name: 'Pikachu',
              number: 1),
          SizedBox(height: 16),
          PokemonWidget(
              thumbnail:
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/Charmander.png',
              name: 'Charmander',
              number: 2),
          SizedBox(height: 16),
          PokemonWidget(
              thumbnail:
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/Squirtle.png',
              name: 'Squirtle',
              number: 3),
        ],
      ),
    );
  }
}
