import 'package:flutter/material.dart';

class MovesPage extends StatefulWidget {
  const MovesPage({super.key});

  @override
  State<MovesPage> createState() => _MovesPageState();
}

class _MovesPageState extends State<MovesPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Moves"),
    );
  }
}
