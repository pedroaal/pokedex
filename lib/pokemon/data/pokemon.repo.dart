import 'package:pokedex/pokemon/data/pokemon.remote.dart';
import 'package:pokedex/pokemon/data/pokemon.model.dart';
import 'package:pokedex/pokemon/domain/pokemon.repo.dart';

class PokemonRepo implements IPokemonRepo {
  @override
  Future<List<Pokemon>> getAll({required int page}) async {
    return await PokemonRemote().findAll(page: page);
  }

  @override
  Future<Pokemon> getById({required int id}) async {
    return await PokemonRemote().findOne(query: id.toString());
  }

  @override
  Future<Pokemon> getByName({required String name}) async {
    return await PokemonRemote().findOne(query: name);
  }
}
