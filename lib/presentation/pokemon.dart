import 'package:flutter/material.dart';

import 'package:pokedex/presentation/main.dart';

class PokemonPage extends StatefulWidget {
  const PokemonPage({super.key});

  @override
  State<PokemonPage> createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Pokemon"),
    );
  }
}
