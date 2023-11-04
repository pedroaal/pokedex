import 'package:pokedex/move/data/move.remote.dart';
import 'package:pokedex/move/data/move.model.dart';
import 'package:pokedex/move/domain/move.repo.dart';

class MoveRepo implements IMoveRepo {
  @override
  Future<List<Move>> getAll({required int page}) async {
    return await MoveRemote().findAll(page: page);
  }

  @override
  Future<Move> getById({required int id}) async {
    return await MoveRemote().findOne(query: id.toString());
  }
}
