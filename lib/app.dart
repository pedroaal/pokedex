import 'package:flutter/material.dart';

import 'package:pokedex/pokemon/presentation/index.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/pokemon': (context) => const PokemonPage(),
      },
    );
  }
}
