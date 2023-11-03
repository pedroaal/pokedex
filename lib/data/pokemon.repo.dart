import 'package:pokedex/data/pokemon.remote.dart';
import 'package:pokedex/data/pokemon.model.dart';
import 'package:pokedex/domain/pokemon.repo.dart';

class PokemonRepo implements IPokemonRepo {
  @override
  Future<Pokedex> getAll() async {
    return await PokemonRemote().findAll();
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
