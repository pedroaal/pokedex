import 'package:http/http.dart' as http;

import 'package:pokedex/core/configs/api.dart';
import 'package:pokedex/item/data/item.model.dart';

class ItemRemote {
  Future<List<Item>> findAll({required int page}) async {
    final delta = (page * LIMIT) + 1;
    final futures = Iterable.generate(LIMIT)
        .map((i) => findOne(query: (i + delta).toString()));
    return await Future.wait(futures);
  }

  Future<Item> findOne({required String query}) async {
    final response = await http.get(Uri.parse('$POKE_API/item/$query'));

    if (response.statusCode == 200) {
      return itemFromJson(response.body);
    } else {
      throw Exception('Failed to load item');
    }
  }
}
