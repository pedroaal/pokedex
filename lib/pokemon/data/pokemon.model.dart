import 'dart:convert';

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
    required List<Ability> abilities,
    required List<Species> forms,
    required List<GameIndex> gameIndices,
    required List<dynamic> heldItems,
    required String locationAreaEncounters,
    required List<Move> moves,
    required List<dynamic> pastAbilities,
    required List<dynamic> pastTypes,
    required Sprites sprites,
    required Species species,
    required List<Stat> stats,
    required List<Type> types,
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
          pastAbilities: pastAbilities,
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
        abilities: List<Ability>.from(
            json["abilities"].map((x) => Ability.fromJson(x))),
        forms:
            List<Species>.from(json["forms"].map((x) => Species.fromJson(x))),
        gameIndices: List<GameIndex>.from(
            json["game_indices"].map((x) => GameIndex.fromJson(x))),
        heldItems: List<dynamic>.from(json["held_items"].map((x) => x)),
        locationAreaEncounters: json["location_area_encounters"],
        moves: List<Move>.from(json["moves"].map((x) => Move.fromJson(x))),
        pastAbilities: List<dynamic>.from(json["past_abilities"].map((x) => x)),
        pastTypes: List<dynamic>.from(json["past_types"].map((x) => x)),
        sprites: Sprites.fromJson(json["sprites"]),
        species: Species.fromJson(json["species"]),
        stats: List<Stat>.from(json["stats"].map((x) => Stat.fromJson(x))),
        types: List<Type>.from(json["types"].map((x) => Type.fromJson(x))),
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
        "past_abilities": List<dynamic>.from(pastAbilities.map((x) => x)),
        "past_types": List<dynamic>.from(pastTypes.map((x) => x)),
        "sprites": sprites.toJson(),
        "species": species.toJson(),
        "stats": List<dynamic>.from(stats.map((x) => x.toJson())),
        "types": List<dynamic>.from(types.map((x) => x.toJson())),
      };
}

class Ability extends IAbility {
  Ability({
    required Species ability,
    required bool isHidden,
    required int slot,
  }) : super(
          ability: ability,
          isHidden: isHidden,
          slot: slot,
        );

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        ability: Species.fromJson(json["ability"]),
        isHidden: json["is_hidden"],
        slot: json["slot"],
      );

  Map<String, dynamic> toJson() => {
        "ability": ability.toJson(),
        "is_hidden": isHidden,
        "slot": slot,
      };
}

class Species extends ISpecies {
  Species({
    required String name,
    required String url,
  }) : super(name: name, url: url);

  factory Species.fromJson(Map<String, dynamic> json) => Species(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

class GameIndex extends IGameIndex {
  GameIndex({
    required int gameIndex,
    required Species version,
  }) : super(gameIndex: gameIndex, version: version);

  factory GameIndex.fromJson(Map<String, dynamic> json) => GameIndex(
        gameIndex: json["game_index"],
        version: Species.fromJson(json["version"]),
      );

  Map<String, dynamic> toJson() => {
        "game_index": gameIndex,
        "version": version.toJson(),
      };
}

class Move extends IMove {
  Move({
    required Species move,
    required List<VersionGroupDetail> versionGroupDetails,
  }) : super(
          move: move,
          versionGroupDetails: versionGroupDetails,
        );

  factory Move.fromJson(Map<String, dynamic> json) => Move(
        move: Species.fromJson(json["move"]),
        versionGroupDetails: List<VersionGroupDetail>.from(
            json["version_group_details"]
                .map((x) => VersionGroupDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "move": move.toJson(),
        "version_group_details":
            List<dynamic>.from(versionGroupDetails.map((x) => x.toJson())),
      };
}

class Sprites extends ISprites {
  Sprites({
    required String frontDefault,
    required String frontShiny,
    required dynamic frontFemale,
    required dynamic frontShinyFemale,
    required String backDefault,
    required String backShiny,
    required dynamic backFemale,
    required dynamic backShinyFemale,
    Other? other,
    Versions? versions,
    Sprites? animated,
  }) : super(
          frontDefault: frontDefault,
          frontShiny: frontShiny,
          frontFemale: frontFemale,
          frontShinyFemale: frontShinyFemale,
          backDefault: backDefault,
          backShiny: backShiny,
          backFemale: backFemale,
          backShinyFemale: backShinyFemale,
          other: other,
          versions: versions,
          animated: animated,
        );

  factory Sprites.fromJson(Map<String, dynamic> json) => Sprites(
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
        frontFemale: json["front_female"],
        frontShinyFemale: json["front_shiny_female"],
        backDefault: json["back_default"],
        backShiny: json["back_shiny"],
        backFemale: json["back_female"],
        backShinyFemale: json["back_shiny_female"],
        other: json["other"] == null ? null : Other.fromJson(json["other"]),
        versions: json["versions"] == null
            ? null
            : Versions.fromJson(json["versions"]),
        animated: json["animated"] == null
            ? null
            : Sprites.fromJson(json["animated"]),
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
        "other": other?.toJson(),
        "versions": versions?.toJson(),
        "animated": animated?.toJson(),
      };
}

class Stat extends IStat {
  Stat({
    required Species stat,
    required int effort,
    required int baseStat,
  }) : super(baseStat: baseStat, effort: effort, stat: stat);

  factory Stat.fromJson(Map<String, dynamic> json) => Stat(
        stat: Species.fromJson(json["stat"]),
        effort: json["effort"],
        baseStat: json["base_stat"],
      );

  Map<String, dynamic> toJson() => {
        "stat": stat.toJson(),
        "effort": effort,
        "base_stat": baseStat,
      };
}

class Type extends IType {
  Type({
    required int slot,
    required Species type,
  }) : super(slot: slot, type: type);

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        slot: json["slot"],
        type: Species.fromJson(json["type"]),
      );

  Map<String, dynamic> toJson() => {
        "slot": slot,
        "type": type.toJson(),
      };
}

class VersionGroupDetail extends IVersionGroupDetail {
  VersionGroupDetail({
    required int levelLearnedAt,
    required Species moveLearnMethod,
    required Species versionGroup,
  }) : super(
          levelLearnedAt: levelLearnedAt,
          moveLearnMethod: moveLearnMethod,
          versionGroup: versionGroup,
        );

  factory VersionGroupDetail.fromJson(Map<String, dynamic> json) =>
      VersionGroupDetail(
        levelLearnedAt: json["level_learned_at"],
        moveLearnMethod: Species.fromJson(json["move_learn_method"]),
        versionGroup: Species.fromJson(json["version_group"]),
      );

  Map<String, dynamic> toJson() => {
        "level_learned_at": levelLearnedAt,
        "move_learn_method": moveLearnMethod.toJson(),
        "version_group": versionGroup.toJson(),
      };
}

class Versions extends IVersions {
  Versions({
    required GenerationI generationI,
    required GenerationIi generationIi,
    required GenerationIii generationIii,
    required GenerationIv generationIv,
    required GenerationV generationV,
    required Map<String, Home> generationVi,
    required GenerationVii generationVii,
    required GenerationViii generationViii,
  }) : super(
          generationI: generationI,
          generationIi: generationIi,
          generationIii: generationIii,
          generationIv: generationIv,
          generationV: generationV,
          generationVi: generationVi,
          generationVii: generationVii,
          generationViii: generationViii,
        );

  factory Versions.fromJson(Map<String, dynamic> json) => Versions(
        generationI: GenerationI.fromJson(json["generation-i"]),
        generationIi: GenerationIi.fromJson(json["generation-ii"]),
        generationIii: GenerationIii.fromJson(json["generation-iii"]),
        generationIv: GenerationIv.fromJson(json["generation-iv"]),
        generationV: GenerationV.fromJson(json["generation-v"]),
        generationVi: Map.from(json["generation-vi"])
            .map((k, v) => MapEntry<String, Home>(k, Home.fromJson(v))),
        generationVii: GenerationVii.fromJson(json["generation-vii"]),
        generationViii: GenerationViii.fromJson(json["generation-viii"]),
      );

  Map<String, dynamic> toJson() => {
        "generation-i": generationI.toJson(),
        "generation-ii": generationIi.toJson(),
        "generation-iii": generationIii.toJson(),
        "generation-iv": generationIv.toJson(),
        "generation-v": generationV.toJson(),
        "generation-vi": Map.from(generationVi)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "generation-vii": generationVii.toJson(),
        "generation-viii": generationViii.toJson(),
      };
}

class GenerationI extends IGenerationI {
  GenerationI({
    required RedBlue redBlue,
    required RedBlue yellow,
  }) : super(redBlue: redBlue, yellow: yellow);

  factory GenerationI.fromJson(Map<String, dynamic> json) => GenerationI(
        redBlue: RedBlue.fromJson(json["red-blue"]),
        yellow: RedBlue.fromJson(json["yellow"]),
      );

  Map<String, dynamic> toJson() => {
        "red-blue": redBlue.toJson(),
        "yellow": yellow.toJson(),
      };
}

class GenerationIi extends IGenerationIi {
  GenerationIi({
    required Crystal crystal,
    required Gold gold,
    required Gold silver,
  }) : super(crystal: crystal, gold: gold, silver: silver);

  factory GenerationIi.fromJson(Map<String, dynamic> json) => GenerationIi(
        crystal: Crystal.fromJson(json["crystal"]),
        gold: Gold.fromJson(json["gold"]),
        silver: Gold.fromJson(json["silver"]),
      );

  Map<String, dynamic> toJson() => {
        "crystal": crystal.toJson(),
        "gold": gold.toJson(),
        "silver": silver.toJson(),
      };
}

class GenerationIii extends IGenerationIii {
  GenerationIii({
    required OfficialArtwork emerald,
    required Gold fireredLeafgreen,
    required Gold rubySapphire,
  }) : super(
          emerald: emerald,
          fireredLeafgreen: fireredLeafgreen,
          rubySapphire: rubySapphire,
        );

  factory GenerationIii.fromJson(Map<String, dynamic> json) => GenerationIii(
        emerald: OfficialArtwork.fromJson(json["emerald"]),
        fireredLeafgreen: Gold.fromJson(json["firered-leafgreen"]),
        rubySapphire: Gold.fromJson(json["ruby-sapphire"]),
      );

  Map<String, dynamic> toJson() => {
        "emerald": emerald.toJson(),
        "firered-leafgreen": fireredLeafgreen.toJson(),
        "ruby-sapphire": rubySapphire.toJson(),
      };
}

class GenerationIv extends IGenerationIv {
  GenerationIv({
    required Sprites diamondPearl,
    required Sprites heartgoldSoulsilver,
    required Sprites platinum,
  }) : super(
            diamondPearl: diamondPearl,
            heartgoldSoulsilver: heartgoldSoulsilver,
            platinum: platinum);

  factory GenerationIv.fromJson(Map<String, dynamic> json) => GenerationIv(
        diamondPearl: Sprites.fromJson(json["diamond-pearl"]),
        heartgoldSoulsilver: Sprites.fromJson(json["heartgold-soulsilver"]),
        platinum: Sprites.fromJson(json["platinum"]),
      );

  Map<String, dynamic> toJson() => {
        "diamond-pearl": diamondPearl.toJson(),
        "heartgold-soulsilver": heartgoldSoulsilver.toJson(),
        "platinum": platinum.toJson(),
      };
}

class GenerationV extends IGenerationV {
  GenerationV({
    required Sprites blackWhite,
  }) : super(blackWhite: blackWhite);

  factory GenerationV.fromJson(Map<String, dynamic> json) => GenerationV(
        blackWhite: Sprites.fromJson(json["black-white"]),
      );

  Map<String, dynamic> toJson() => {
        "black-white": blackWhite.toJson(),
      };
}

class GenerationVii extends IGenerationVii {
  GenerationVii({
    required DreamWorld icons,
    required Home ultraSunUltraMoon,
  }) : super(icons: icons, ultraSunUltraMoon: ultraSunUltraMoon);

  factory GenerationVii.fromJson(Map<String, dynamic> json) => GenerationVii(
        icons: DreamWorld.fromJson(json["icons"]),
        ultraSunUltraMoon: Home.fromJson(json["ultra-sun-ultra-moon"]),
      );

  Map<String, dynamic> toJson() => {
        "icons": icons.toJson(),
        "ultra-sun-ultra-moon": ultraSunUltraMoon.toJson(),
      };
}

class GenerationViii extends IGenerationViii {
  GenerationViii({
    required DreamWorld icons,
  }) : super(icons: icons);

  factory GenerationViii.fromJson(Map<String, dynamic> json) => GenerationViii(
        icons: DreamWorld.fromJson(json["icons"]),
      );

  Map<String, dynamic> toJson() => {
        "icons": icons.toJson(),
      };
}

class RedBlue extends IRedBlue {
  RedBlue({
    required String backDefault,
    required String backGray,
    required String backTransparent,
    required String frontDefault,
    required String frontGray,
    required String frontTransparent,
  }) : super(
          backDefault: backDefault,
          backGray: backGray,
          backTransparent: backTransparent,
          frontDefault: frontDefault,
          frontGray: frontGray,
          frontTransparent: frontTransparent,
        );

  factory RedBlue.fromJson(Map<String, dynamic> json) => RedBlue(
        backDefault: json["back_default"],
        backGray: json["back_gray"],
        backTransparent: json["back_transparent"],
        frontDefault: json["front_default"],
        frontGray: json["front_gray"],
        frontTransparent: json["front_transparent"],
      );

  Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_gray": backGray,
        "back_transparent": backTransparent,
        "front_default": frontDefault,
        "front_gray": frontGray,
        "front_transparent": frontTransparent,
      };
}

class Crystal extends ICrystal {
  Crystal({
    required String backDefault,
    required String backShiny,
    required String backShinyTransparent,
    required String backTransparent,
    required String frontDefault,
    required String frontShiny,
    required String frontShinyTransparent,
    required String frontTransparent,
  }) : super(
          backDefault: backDefault,
          backShiny: backShiny,
          backShinyTransparent: backShinyTransparent,
          backTransparent: backTransparent,
          frontDefault: frontDefault,
          frontShiny: frontShiny,
          frontShinyTransparent: frontShinyTransparent,
          frontTransparent: frontTransparent,
        );

  factory Crystal.fromJson(Map<String, dynamic> json) => Crystal(
        backDefault: json["back_default"],
        backShiny: json["back_shiny"],
        backShinyTransparent: json["back_shiny_transparent"],
        backTransparent: json["back_transparent"],
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
        frontShinyTransparent: json["front_shiny_transparent"],
        frontTransparent: json["front_transparent"],
      );

  Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_shiny": backShiny,
        "back_shiny_transparent": backShinyTransparent,
        "back_transparent": backTransparent,
        "front_default": frontDefault,
        "front_shiny": frontShiny,
        "front_shiny_transparent": frontShinyTransparent,
        "front_transparent": frontTransparent,
      };
}

class Gold extends IGold {
  Gold({
    required String backDefault,
    required String backShiny,
    required String frontDefault,
    required String frontShiny,
    String? frontTransparent,
  }) : super(
          backDefault: backDefault,
          backShiny: backShiny,
          frontDefault: frontDefault,
          frontShiny: frontShiny,
          frontTransparent: frontTransparent,
        );

  factory Gold.fromJson(Map<String, dynamic> json) => Gold(
        backDefault: json["back_default"],
        backShiny: json["back_shiny"],
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
        frontTransparent: json["front_transparent"],
      );

  Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_shiny": backShiny,
        "front_default": frontDefault,
        "front_shiny": frontShiny,
        "front_transparent": frontTransparent,
      };
}

class OfficialArtwork extends IOfficialArtwork {
  OfficialArtwork({
    required String frontDefault,
    required String frontShiny,
  }) : super(frontDefault: frontDefault, frontShiny: frontShiny);

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      OfficialArtwork(
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
      );

  Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_shiny": frontShiny,
      };
}

class DreamWorld extends IDreamWorld {
  DreamWorld({
    required String frontDefault,
    required dynamic frontFemale,
  }) : super(frontDefault: frontDefault, frontFemale: frontFemale);

  factory DreamWorld.fromJson(Map<String, dynamic> json) => DreamWorld(
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
      );

  Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_female": frontFemale,
      };
}

class Home extends IHome {
  Home({
    required String frontDefault,
    required dynamic frontFemale,
    required String frontShiny,
    required dynamic frontShinyFemale,
  }) : super(
          frontDefault: frontDefault,
          frontFemale: frontFemale,
          frontShiny: frontShiny,
          frontShinyFemale: frontShinyFemale,
        );

  factory Home.fromJson(Map<String, dynamic> json) => Home(
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
        frontShiny: json["front_shiny"],
        frontShinyFemale: json["front_shiny_female"],
      );

  Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_female": frontFemale,
        "front_shiny": frontShiny,
        "front_shiny_female": frontShinyFemale,
      };
}

class Other extends IOther {
  Other({
    required DreamWorld dreamWorld,
    required Home home,
    required OfficialArtwork officialArtwork,
  }) : super(
            dreamWorld: dreamWorld,
            home: home,
            officialArtwork: officialArtwork);

  factory Other.fromJson(Map<String, dynamic> json) => Other(
        dreamWorld: DreamWorld.fromJson(json["dream_world"]),
        home: Home.fromJson(json["home"]),
        officialArtwork: OfficialArtwork.fromJson(json["official-artwork"]),
      );

  Map<String, dynamic> toJson() => {
        "dream_world": dreamWorld.toJson(),
        "home": home.toJson(),
        "official-artwork": officialArtwork.toJson(),
      };
}
