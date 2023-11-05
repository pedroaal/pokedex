import 'package:http/http.dart' as http;

import 'package:pokedex/core/configs/api.dart';
import 'package:pokedex/move/data/move.model.dart';

class MoveRemote {
  Future<List<Move>> findAll({required int page}) async {
    final delta = (page * LIMIT) + 1;
    final futures = Iterable.generate(LIMIT)
        .map((i) => findOne(query: (i + delta).toString()));
    return await Future.wait(futures);
  }

  Future<Move> findOne({required String query}) async {
    final response = await http.get(Uri.parse('$POKE_API/move/$query'));

    if (response.statusCode == 200) {
      return moveFromJson(response.body);
    } else {
      throw Exception('Failed to load move');
    }
  }
}
