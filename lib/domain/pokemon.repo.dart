import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:pokedex/core/configs/api.dart';
import 'package:pokedex/domain/pokemon.model.dart';

abstract class PokemonRepository {
  Future<Pokedex> getAll();
  Future<Pokemon?> getById({required int id});
  Future<Pokemon?> getByName({required String name});
}

class PokemonRepo implements PokemonRepository {
  @override
  Future<Pokedex> getAll() async {
    final response = await http.get(Uri.parse('$POKE_API/pokemon'));

    if (response.statusCode == 200) {
      return Pokedex.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load all pokemon');
    }
  }

  @override
  Future<Pokemon> getById({required int id}) async {
    final response = await http.get(Uri.parse('$POKE_API/pokemon/$id'));

    if (response.statusCode == 200) {
      return Pokemon.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load pokemon');
    }
  }

  @override
  Future<Pokemon> getByName({required String name}) async {
    final response = await http.get(Uri.parse('$POKE_API/pokemon/$name'));

    if (response.statusCode == 200) {
      return Pokemon.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load pokemon');
    }
  }
}
