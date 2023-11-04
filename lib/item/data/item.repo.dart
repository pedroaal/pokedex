import 'package:pokedex/item/data/item.remote.dart';
import 'package:pokedex/item/data/item.model.dart';
import 'package:pokedex/item/domain/item.repo.dart';

class ItemRepo implements IItemRepo {
  @override
  Future<List<Item>> getAll({required int page}) async {
    return await ItemRemote().findAll(page: page);
  }

  @override
  Future<Item> getById({required int id}) async {
    return await ItemRemote().findOne(query: id.toString());
  }
}
