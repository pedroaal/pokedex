import 'package:flutter/material.dart';

import 'package:pokedex/item/presentation/items.page.dart';
import 'package:pokedex/move/presentation/moves.page.dart';
import 'package:pokedex/pokemon/presentation/pokemon.page.dart';

import 'package:pokedex/core/presentation/_searchBy.widget.dart';

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
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: const Text('Pokemon'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: const Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    style: TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      labelText: 'Search',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.all(0),
                    ),
                  ),
                ),
                SizedBox(width: 4),
                SearchByWidget(),
              ],
            ),
          ),
        ),
      ),
      body: _widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar: NavigationBar(
        indicatorColor: Theme.of(context).colorScheme.inversePrimary,
        selectedIndex: _currentIndex,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.circle,
                color: Theme.of(context).colorScheme.primary),
            icon: Icon(Icons.circle_outlined,
                color: Theme.of(context).colorScheme.primary),
            label: 'Pokemon',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.shield,
                color: Theme.of(context).colorScheme.primary),
            icon: Icon(Icons.shield_outlined,
                color: Theme.of(context).colorScheme.primary),
            label: 'Moves',
          ),
          NavigationDestination(
            selectedIcon:
                Icon(Icons.cake, color: Theme.of(context).colorScheme.primary),
            icon: Icon(Icons.cake_outlined,
                color: Theme.of(context).colorScheme.primary),
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
