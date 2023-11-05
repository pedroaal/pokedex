import 'package:equatable/equatable.dart';

import 'package:pokedex/core/data/base.model.dart';
import 'package:pokedex/item/data/item.model.dart';

class IItem {
  int id;
  String name;
  int cost;
  int flingPower;
  NamedApiResource flingEffect;
  List<NamedApiResource> attributes;
  NamedApiResource category;
  List<VerboseEffect> effectEntries;
  List<VersionGroupFlavorText> flavorTextEntries;
  List<GenerationGameIndex> gameIndices;
  List<Name> names;
  ItemSprites sprites;
  List<ItemHolderPokemon> heldByPokemon;
  ApiResource babyTriggerFor;
  MachineVersionDetail machines;

  IItem({
    required this.id,
    required this.name,
    required this.cost,
    required this.flingPower,
    required this.flingEffect,
    required this.attributes,
    required this.category,
    required this.effectEntries,
    required this.flavorTextEntries,
    required this.gameIndices,
    required this.names,
    required this.sprites,
    required this.heldByPokemon,
    required this.babyTriggerFor,
    required this.machines,
  });

  @override
  List<Object> get props => [
        id,
        name,
        cost,
        flingPower,
        flingEffect,
        attributes,
        category,
        effectEntries,
        flavorTextEntries,
        gameIndices,
        names,
        sprites,
        heldByPokemon,
        babyTriggerFor,
        machines,
      ];
}

class IItemSprites {
  String def;

  IItemSprites({
    required this.def,
  });

  @override
  List<Object> get props => [
        def,
      ];
}

class IItemHolderPokemon {
  NamedApiResource pokemon;
  List<ItemHolderPokemonVersionDetail> versionDetails;

  IItemHolderPokemon({
    required this.pokemon,
    required this.versionDetails,
  });

  @override
  List<Object> get props => [
        pokemon,
        versionDetails,
      ];
}

class IItemHolderPokemonVersionDetail {
  int rarity;
  NamedApiResource version;

  IItemHolderPokemonVersionDetail({
    required this.rarity,
    required this.version,
  });

  @override
  List<Object> get props => [
        rarity,
        version,
      ];
}
