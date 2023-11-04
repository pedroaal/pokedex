import 'package:pokedex/item/data/item.model.dart';

abstract class IItemRepo {
  Future<List<Item>> getAll({required int page});
  Future<Item?> getById({required int id});
}
