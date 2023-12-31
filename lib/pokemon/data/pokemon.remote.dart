import 'package:http/http.dart' as http;

import 'package:pokedex/core/configs/api.dart';
import 'package:pokedex/pokemon/data/pokemon.model.dart';

class PokemonRemote {
  Future<List<Pokemon>> findAll({required int page}) async {
    final delta = (page * LIMIT) + 1;
    final futures = Iterable.generate(LIMIT)
        .map((i) => findOne(query: (i + delta).toString()));
    return await Future.wait(futures);
  }

  Future<Pokemon> findOne({required String query}) async {
    final response = await http.get(Uri.parse('$POKE_API/pokemon/$query'));

    if (response.statusCode == 200) {
      return pokemonFromJson(response.body);
    } else {
      throw Exception('Failed to load pokemon');
    }
  }
}
