import 'package:pokedex/data/pokemon.model.dart';

abstract class IPokemonRepo {
  Future<Pokedex> getAll();
  Future<Pokemon?> getById({required int id});
  Future<Pokemon?> getByName({required String name});
}
