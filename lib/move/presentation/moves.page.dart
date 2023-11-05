import 'package:flutter/material.dart';

import 'package:pokedex/move/data/move.model.dart';
import 'package:pokedex/move/data/move.repo.dart';

import 'package:pokedex/core/presentation/_loader.widget.dart';
import 'package:pokedex/move/presentation/_move.widget.dart';

class MovesPage extends StatefulWidget {
  const MovesPage({super.key});

  @override
  State<MovesPage> createState() => _MovesPageState();
}

class _MovesPageState extends State<MovesPage> {
  late Future<List<Move>> getAll;

  @override
  void initState() {
    super.initState();
    getAll = MoveRepo().getAll(page: 0);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getAll,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              return MoveWidget(move: snapshot.data![index]);
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          );
        }

        if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const LoaderWidget();
      },
    );
  }
}
