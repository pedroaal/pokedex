import 'package:flutter/material.dart';

import 'package:pokedex/item/data/item.model.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

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
              item.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '#${item.id}',
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
