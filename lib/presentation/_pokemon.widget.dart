import 'package:flutter/material.dart';

class PokemonWidget extends StatelessWidget {
  final String thumbnail;
  final String name;
  final int number;

  const PokemonWidget(
      {super.key,
      required this.thumbnail,
      required this.name,
      required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          thumbnail,
          width: 50,
          height: 50,
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '#$number',
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
