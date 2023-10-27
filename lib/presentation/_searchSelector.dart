import 'package:flutter/material.dart';

class SearchSelector extends StatefulWidget {
  const SearchSelector({super.key});

  @override
  State<SearchSelector> createState() => _SearchSelectorState();
}

class _SearchSelectorState extends State<SearchSelector> {
  int _index = 0;

  final List<Icon> _types = <Icon>[
    const Icon(Icons.abc),
    const Icon(Icons.onetwothree),
  ];

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      icon: _types.elementAt(_index),
      tooltip: 'Select search type',
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Theme.of(context).colorScheme.primaryContainer,
        ),
      ),
      onPressed: () {
        setState(() {
          _index = (_index + 1) % _types.length;
        });
      },
    );
  }
}
