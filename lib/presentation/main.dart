import 'package:flutter/material.dart';

import 'package:pokedex/presentation/items.dart';
import 'package:pokedex/presentation/moves.dart';
import 'package:pokedex/presentation/pokemon.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const PokemonPage(),
    const MovesPage(),
    const ItemsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Pokemon'),
      ),
      body: _widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.transparent,
        selectedIndex: _currentIndex,
        backgroundColor: Colors.red,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.circle, color: Colors.white),
            icon: Icon(Icons.circle_outlined, color: Colors.white),
            label: 'Pokemon',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.shield, color: Colors.white),
            icon: Icon(Icons.shield_outlined, color: Colors.white),
            label: 'Moves',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.cake, color: Colors.white),
            icon: Icon(Icons.cake_outlined, color: Colors.white),
            label: 'Items',
          ),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
