import 'package:flutter/material.dart';

import 'package:pokedex/item/data/item.model.dart';
import 'package:pokedex/item/data/item.repo.dart';

import 'package:pokedex/core/presentation/_loader.widget.dart';
import 'package:pokedex/item/presentation/_item.widget.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({super.key});

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  late Future<List<Item>> getAll;

  @override
  void initState() {
    super.initState();
    getAll = ItemRepo().getAll(page: 0);
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
              return ItemWidget(item: snapshot.data![index]);
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
