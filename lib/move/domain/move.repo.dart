import 'package:pokedex/move/data/move.model.dart';

abstract class IMoveRepo {
  Future<List<Move>> getAll({required int page});
  Future<Move?> getById({required int id});
}
