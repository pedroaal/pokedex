import 'package:equatable/equatable.dart';

import 'package:pokedex/core/data/base.model.dart';
import 'package:pokedex/pokemon/data/pokemon.model.dart';

class IPokemon {
  int id;
  String name;
  int baseExperience;
  int height;
  bool isDefault;
  int order;
  int weight;
  List<PokemonAbility> abilities;
  List<NamedApiResource> forms;
  List<VersionGameIndex> gameIndices;
  List<PokemonHeldItem> heldItems;
  String locationAreaEncounters;
  List<PokemonMove> moves;
  List<PokemonTypePast> pastTypes;
  PokemonSprites sprites;
  NamedApiResource species;
  List<PokemonStat> stats;
  List<PokemonType> types;

  IPokemon({
    required this.id,
    required this.name,
    required this.baseExperience,
    required this.height,
    required this.isDefault,
    required this.order,
    required this.weight,
    required this.abilities,
    required this.forms,
    required this.gameIndices,
    required this.heldItems,
    required this.locationAreaEncounters,
    required this.moves,
    required this.pastTypes,
    required this.sprites,
    required this.species,
    required this.stats,
    required this.types,
  });

  @override
  List<Object> get props => [
        id,
        name,
        baseExperience,
        height,
        isDefault,
        order,
        weight,
        abilities,
        forms,
        gameIndices,
        heldItems,
        locationAreaEncounters,
        moves,
        pastTypes,
        sprites,
        species,
        stats,
        types
      ];
}

class IPokemonAbility {
  bool isHidden;
  int slot;
  NamedApiResource ability;

  IPokemonAbility({
    required this.isHidden,
    required this.slot,
    required this.ability,
  });

  @override
  List<Object> get props => [ability, isHidden, slot];
}

class IPokemonHeldItem {
  NamedApiResource item;
  List<PokemonHeldItemVersion> versionDetails;

  IPokemonHeldItem({
    required this.item,
    required this.versionDetails,
  });

  @override
  List<Object> get props => [item, versionDetails];
}

class IPokemonHeldItemVersion {
  NamedApiResource version;
  int rarity;

  IPokemonHeldItemVersion({
    required this.version,
    required this.rarity,
  });

  @override
  List<Object> get props => [version, rarity];
}

class IPokemonMove {
  NamedApiResource move;
  List<PokemonMoveVersion> versionGroupDetails;

  IPokemonMove({
    required this.move,
    required this.versionGroupDetails,
  });

  @override
  List<Object> get props => [move, versionGroupDetails];
}

class IPokemonMoveVersion {
  NamedApiResource moveLearnMethod;
  NamedApiResource versionGroup;
  int levelLearnedAt;

  IPokemonMoveVersion({
    required this.moveLearnMethod,
    required this.versionGroup,
    required this.levelLearnedAt,
  });

  @override
  List<Object> get props => [moveLearnMethod, versionGroup, levelLearnedAt];
}

class IPokemonTypePast {
  NamedApiResource generation;
  List<PokemonType> types;

  IPokemonTypePast({
    required this.generation,
    required this.types,
  });

  @override
  List<Object> get props => [generation, types];
}

class IPokemonType {
  int slot;
  NamedApiResource type;

  IPokemonType({
    required this.slot,
    required this.type,
  });

  @override
  List<Object> get props => [slot, type];
}

class IPokemonSprites {
  String frontDefault;
  String frontShiny;
  String? frontFemale;
  String? frontShinyFemale;
  String backDefault;
  String backShiny;
  String? backFemale;
  String? backShinyFemale;

  IPokemonSprites({
    required this.frontDefault,
    required this.frontShiny,
    this.frontFemale,
    this.frontShinyFemale,
    required this.backDefault,
    required this.backShiny,
    this.backFemale,
    this.backShinyFemale,
  });

  @override
  List<Object> get props => [
        frontDefault,
        frontShiny,
        backDefault,
        backShiny,
      ];
}

class IPokemonStat {
  NamedApiResource stat;
  int effort;
  int baseStat;

  IPokemonStat({
    required this.stat,
    required this.effort,
    required this.baseStat,
  });
}
