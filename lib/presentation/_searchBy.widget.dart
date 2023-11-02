import 'package:flutter/material.dart';

class SearchByWidget extends StatefulWidget {
  const SearchByWidget({super.key});

  @override
  State<SearchByWidget> createState() => _SearchByWidgetState();
}

class _SearchByWidgetState extends State<SearchByWidget> {
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
