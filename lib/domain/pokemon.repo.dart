import 'package:pokedex/data/pokemon.model.dart';

abstract class IPokemonRepo {
  Future<List<Pokemon>> getAll({required int page});
  Future<Pokemon?> getById({required int id});
  Future<Pokemon?> getByName({required String name});
}
