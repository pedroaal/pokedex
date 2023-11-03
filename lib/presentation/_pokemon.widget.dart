import 'package:flutter/material.dart';
import 'package:pokedex/data/pokemon.model.dart';

class PokemonWidget extends StatelessWidget {
  final PokemonMin pokemon;

  const PokemonWidget({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          pokemon.name,
          width: 50,
          height: 50,
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              pokemon.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '#${pokemon.name}',
              style: const TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
