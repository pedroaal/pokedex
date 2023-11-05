import 'package:flutter/material.dart';

import 'package:pokedex/move/data/move.model.dart';

class MoveWidget extends StatelessWidget {
  final Move move;

  const MoveWidget({super.key, required this.move});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              move.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '#${move.id}',
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
