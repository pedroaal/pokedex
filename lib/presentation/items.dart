import 'package:flutter/material.dart';

import 'package:pokedex/presentation/main.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({super.key});

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Items"),
    );
  }
}
