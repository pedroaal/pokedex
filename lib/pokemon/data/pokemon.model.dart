import 'dart:convert';

import 'package:pokedex/core/data/base.model.dart';
import 'package:pokedex/pokemon/domain/pokemon.entity.dart';

Pokemon pokemonFromJson(String str) => Pokemon.fromJson(json.decode(str));

String pokemonToJson(Pokemon data) => json.encode(data.toJson());

class Pokemon extends IPokemon {
  Pokemon({
    required int id,
    required String name,
    required int baseExperience,
    required int height,
    required bool isDefault,
    required int order,
    required int weight,
    required List<PokemonAbility> abilities,
    required List<NamedResource> forms,
    required List<VersionGameIndex> gameIndices,
    required List<PokemonHeldItem> heldItems,
    required String locationAreaEncounters,
    required List<PokemonMove> moves,
    required List<PokemonTypePast> pastTypes,
    required PokemonSprites sprites,
    required NamedResource species,
    required List<PokemonStat> stats,
    required List<PokemonType> types,
  }) : super(
          id: id,
          name: name,
          baseExperience: baseExperience,
          height: height,
          isDefault: isDefault,
          order: order,
          weight: weight,
          abilities: abilities,
          forms: forms,
          gameIndices: gameIndices,
          heldItems: heldItems,
          locationAreaEncounters: locationAreaEncounters,
          moves: moves,
          pastTypes: pastTypes,
          sprites: sprites,
          species: species,
          stats: stats,
          types: types,
        );

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        id: json["id"],
        name: json["name"],
        baseExperience: json["base_experience"],
        height: json["height"],
        isDefault: json["is_default"],
        order: json["order"],
        weight: json["weight"],
        abilities: List<PokemonAbility>.from(
            json["abilities"].map((x) => PokemonAbility.fromJson(x))),
        forms: List<NamedResource>.from(
            json["forms"].map((x) => NamedResource.fromJson(x))),
        gameIndices: List<VersionGameIndex>.from(
            json["game_indices"].map((x) => VersionGameIndex.fromJson(x))),
        heldItems: List<PokemonHeldItem>.from(
            json["held_items"].map((x) => PokemonHeldItem.fromJson(x))),
        locationAreaEncounters: json["location_area_encounters"],
        moves: List<PokemonMove>.from(
            json["moves"].map((x) => PokemonMove.fromJson(x))),
        pastTypes: List<PokemonTypePast>.from(
            json["past_types"].map((x) => PokemonTypePast.fromJson(x))),
        sprites: PokemonSprites.fromJson(json["sprites"]),
        species: NamedResource.fromJson(json["species"]),
        stats: List<PokemonStat>.from(
            json["stats"].map((x) => PokemonStat.fromJson(x))),
        types: List<PokemonType>.from(
            json["types"].map((x) => PokemonType.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "base_experience": baseExperience,
        "height": height,
        "is_default": isDefault,
        "order": order,
        "weight": weight,
        "abilities": List<dynamic>.from(abilities.map((x) => x.toJson())),
        "forms": List<dynamic>.from(forms.map((x) => x.toJson())),
        "game_indices": List<dynamic>.from(gameIndices.map((x) => x.toJson())),
        "held_items": List<dynamic>.from(heldItems.map((x) => x)),
        "location_area_encounters": locationAreaEncounters,
        "moves": List<dynamic>.from(moves.map((x) => x.toJson())),
        "past_types": List<dynamic>.from(pastTypes.map((x) => x)),
        "sprites": sprites.toJson(),
        "species": species.toJson(),
        "stats": List<dynamic>.from(stats.map((x) => x.toJson())),
        "types": List<dynamic>.from(types.map((x) => x.toJson())),
      };
}

class PokemonAbility extends IPokemonAbility {
  PokemonAbility({
    required bool isHidden,
    required int slot,
    required NamedResource ability,
  }) : super(
          isHidden: isHidden,
          slot: slot,
          ability: ability,
        );

  factory PokemonAbility.fromJson(Map<String, dynamic> json) => PokemonAbility(
        isHidden: json["is_hidden"],
        slot: json["slot"],
        ability: NamedResource.fromJson(json["ability"]),
      );

  Map<String, dynamic> toJson() => {
        "is_hidden": isHidden,
        "slot": slot,
        "ability": ability.toJson(),
      };
}

class VersionGameIndex extends IVersionGameIndex {
  VersionGameIndex({
    required int gameIndex,
    required NamedResource version,
  }) : super(gameIndex: gameIndex, version: version);

  factory VersionGameIndex.fromJson(Map<String, dynamic> json) =>
      VersionGameIndex(
        gameIndex: json["game_index"],
        version: NamedResource.fromJson(json["version"]),
      );

  Map<String, dynamic> toJson() => {
        "game_index": gameIndex,
        "version": version.toJson(),
      };
}

class PokemonHeldItem extends IPokemonHeldItem {
  PokemonHeldItem({
    required NamedResource item,
    required List<PokemonHeldItemVersion> versionDetails,
  }) : super(
          item: item,
          versionDetails: versionDetails,
        );

  factory PokemonHeldItem.fromJson(Map<String, dynamic> json) =>
      PokemonHeldItem(
        item: NamedResource.fromJson(json["item"]),
        versionDetails: List<PokemonHeldItemVersion>.from(
            json["version_details"]
                .map((x) => PokemonHeldItemVersion.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "item": item.toJson(),
        "version_details":
            List<dynamic>.from(versionDetails.map((x) => x.toJson())),
      };
}

class PokemonHeldItemVersion extends IPokemonHeldItemVersion {
  PokemonHeldItemVersion({
    required NamedResource version,
    required int rarity,
  }) : super(
          version: version,
          rarity: rarity,
        );

  factory PokemonHeldItemVersion.fromJson(Map<String, dynamic> json) =>
      PokemonHeldItemVersion(
        version: NamedResource.fromJson(json["version"]),
        rarity: json["rarity"],
      );

  Map<String, dynamic> toJson() => {
        "version": version.toJson(),
        "rarity": rarity,
      };
}

class PokemonMove extends IPokemonMove {
  PokemonMove({
    required NamedResource move,
    required List<PokemonMoveVersion> versionGroupDetails,
  }) : super(
          move: move,
          versionGroupDetails: versionGroupDetails,
        );

  factory PokemonMove.fromJson(Map<String, dynamic> json) => PokemonMove(
        move: NamedResource.fromJson(json["move"]),
        versionGroupDetails: List<PokemonMoveVersion>.from(
            json["version_group_details"]
                .map((x) => PokemonMoveVersion.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "move": move.toJson(),
        "version_group_details":
            List<dynamic>.from(versionGroupDetails.map((x) => x.toJson())),
      };
}

class PokemonMoveVersion extends IPokemonMoveVersion {
  PokemonMoveVersion({
    required NamedResource moveLearnMethod,
    required NamedResource versionGroup,
    required int levelLearnedAt,
  }) : super(
          moveLearnMethod: moveLearnMethod,
          versionGroup: versionGroup,
          levelLearnedAt: levelLearnedAt,
        );

  factory PokemonMoveVersion.fromJson(Map<String, dynamic> json) =>
      PokemonMoveVersion(
        moveLearnMethod: NamedResource.fromJson(json["move_learn_method"]),
        versionGroup: NamedResource.fromJson(json["version_group"]),
        levelLearnedAt: json["level_learned_at"],
      );

  Map<String, dynamic> toJson() => {
        "move_learn_method": moveLearnMethod.toJson(),
        "version_group": versionGroup.toJson(),
        "level_learned_at": levelLearnedAt,
      };
}

class PokemonTypePast extends IPokemonTypePast {
  PokemonTypePast({
    required NamedResource generation,
    required List<PokemonType> types,
  }) : super(
          generation: generation,
          types: types,
        );

  factory PokemonTypePast.fromJson(Map<String, dynamic> json) =>
      PokemonTypePast(
        generation: NamedResource.fromJson(json["generation"]),
        types: List<PokemonType>.from(
            json["types"].map((x) => PokemonType.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "generation": generation.toJson(),
        "types": List<dynamic>.from(types.map((x) => x.toJson())),
      };
}

class PokemonType extends IPokemonType {
  PokemonType({
    required int slot,
    required NamedResource type,
  }) : super(slot: slot, type: type);

  factory PokemonType.fromJson(Map<String, dynamic> json) => PokemonType(
        slot: json["slot"],
        type: NamedResource.fromJson(json["type"]),
      );

  Map<String, dynamic> toJson() => {
        "slot": slot,
        "type": type.toJson(),
      };
}

class PokemonSprites extends IPokemonSprites {
  PokemonSprites({
    required String frontDefault,
    required String frontShiny,
    required dynamic frontFemale,
    required dynamic frontShinyFemale,
    required String backDefault,
    required String backShiny,
    required dynamic backFemale,
    required dynamic backShinyFemale,
  }) : super(
          frontDefault: frontDefault,
          frontShiny: frontShiny,
          frontFemale: frontFemale,
          frontShinyFemale: frontShinyFemale,
          backDefault: backDefault,
          backShiny: backShiny,
          backFemale: backFemale,
          backShinyFemale: backShinyFemale,
        );

  factory PokemonSprites.fromJson(Map<String, dynamic> json) => PokemonSprites(
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
        frontFemale: json["front_female"],
        frontShinyFemale: json["front_shiny_female"],
        backDefault: json["back_default"],
        backShiny: json["back_shiny"],
        backFemale: json["back_female"],
        backShinyFemale: json["back_shiny_female"],
      );

  Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_shiny": frontShiny,
        "front_female": frontFemale,
        "front_shiny_female": frontShinyFemale,
        "back_default": backDefault,
        "back_shiny": backShiny,
        "back_female": backFemale,
        "back_shiny_female": backShinyFemale,
      };
}

class PokemonStat extends IPokemonStat {
  PokemonStat({
    required NamedResource stat,
    required int effort,
    required int baseStat,
  }) : super(effort: effort, stat: stat, baseStat: baseStat);

  factory PokemonStat.fromJson(Map<String, dynamic> json) => PokemonStat(
        stat: NamedResource.fromJson(json["stat"]),
        effort: json["effort"],
        baseStat: json["base_stat"],
      );

  Map<String, dynamic> toJson() => {
        "stat": stat.toJson(),
        "effort": effort,
        "base_stat": baseStat,
      };
}
