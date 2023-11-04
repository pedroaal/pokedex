import 'package:equatable/equatable.dart';

import 'package:pokedex/pokemon/data/pokemon.model.dart';

class IPokemon {
  int id;
  String name;
  int baseExperience;
  int height;
  bool isDefault;
  int order;
  int weight;
  List<Ability> abilities;
  List<Species> forms;
  List<GameIndex> gameIndices;
  List<dynamic> heldItems;
  String locationAreaEncounters;
  List<Move> moves;
  List<dynamic> pastAbilities;
  List<dynamic> pastTypes;
  Sprites sprites;
  Species species;
  List<Stat> stats;
  List<Type> types;

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
    required this.pastAbilities,
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
        pastAbilities,
        pastTypes,
        sprites,
        species,
        stats,
        types
      ];
}

class IAbility {
  Species ability;
  bool isHidden;
  int slot;

  IAbility({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  @override
  List<Object> get props => [ability, isHidden, slot];
}

class ISpecies {
  String name;
  String url;

  ISpecies({
    required this.name,
    required this.url,
  });

  @override
  List<Object> get props => [name, url];
}

class IGameIndex {
  int gameIndex;
  Species version;

  IGameIndex({
    required this.gameIndex,
    required this.version,
  });

  @override
  List<Object> get props => [gameIndex, version];
}

class IMove {
  Species move;
  List<VersionGroupDetail> versionGroupDetails;

  IMove({
    required this.move,
    required this.versionGroupDetails,
  });

  @override
  List<Object> get props => [move, versionGroupDetails];
}

class ISprites {
  String frontDefault;
  String frontShiny;
  dynamic frontFemale;
  dynamic frontShinyFemale;
  String backDefault;
  String backShiny;
  dynamic backFemale;
  dynamic backShinyFemale;
  Other? other;
  Versions? versions;
  Sprites? animated;

  ISprites({
    required this.frontDefault,
    required this.frontShiny,
    required this.frontFemale,
    required this.frontShinyFemale,
    required this.backDefault,
    required this.backShiny,
    required this.backFemale,
    required this.backShinyFemale,
    this.other,
    this.versions,
    this.animated,
  });

  @override
  List<Object> get props => [
        frontDefault,
        frontShiny,
        frontFemale,
        frontShinyFemale,
        backDefault,
        backShiny,
        backFemale,
        backShinyFemale,
      ];
}

class IStat {
  Species stat;
  int effort;
  int baseStat;

  IStat({
    required this.stat,
    required this.effort,
    required this.baseStat,
  });

  @override
  List<Object> get props => [baseStat, effort, stat];
}

class IType {
  int slot;
  Species type;

  IType({
    required this.slot,
    required this.type,
  });

  @override
  List<Object> get props => [slot, type];
}

class IVersionGroupDetail {
  int levelLearnedAt;
  Species moveLearnMethod;
  Species versionGroup;

  IVersionGroupDetail({
    required this.levelLearnedAt,
    required this.moveLearnMethod,
    required this.versionGroup,
  });

  @override
  List<Object> get props => [levelLearnedAt, moveLearnMethod, versionGroup];
}

class IVersions {
  GenerationI generationI;
  GenerationIi generationIi;
  GenerationIii generationIii;
  GenerationIv generationIv;
  GenerationV generationV;
  Map<String, Home> generationVi;
  GenerationVii generationVii;
  GenerationViii generationViii;

  IVersions({
    required this.generationI,
    required this.generationIi,
    required this.generationIii,
    required this.generationIv,
    required this.generationV,
    required this.generationVi,
    required this.generationVii,
    required this.generationViii,
  });

  @override
  List<Object> get props => [
        generationI,
        generationIi,
        generationIii,
        generationIv,
        generationV,
        generationVi,
        generationVii,
        generationViii
      ];
}

class IGenerationI {
  RedBlue redBlue;
  RedBlue yellow;

  IGenerationI({
    required this.redBlue,
    required this.yellow,
  });

  @override
  List<Object> get props => [redBlue, yellow];
}

class IGenerationIi {
  Crystal crystal;
  Gold gold;
  Gold silver;

  IGenerationIi({
    required this.crystal,
    required this.gold,
    required this.silver,
  });

  @override
  List<Object> get props => [crystal, gold, silver];
}

class IGenerationIii {
  OfficialArtwork emerald;
  Gold fireredLeafgreen;
  Gold rubySapphire;

  IGenerationIii({
    required this.emerald,
    required this.fireredLeafgreen,
    required this.rubySapphire,
  });

  @override
  List<Object> get props => [emerald, fireredLeafgreen, rubySapphire];
}

class IGenerationIv {
  Sprites diamondPearl;
  Sprites heartgoldSoulsilver;
  Sprites platinum;

  IGenerationIv({
    required this.diamondPearl,
    required this.heartgoldSoulsilver,
    required this.platinum,
  });

  @override
  List<Object> get props => [diamondPearl, heartgoldSoulsilver, platinum];
}

class IGenerationV {
  Sprites blackWhite;

  IGenerationV({
    required this.blackWhite,
  });

  @override
  List<Object> get props => [blackWhite];
}

class IGenerationVii {
  DreamWorld icons;
  Home ultraSunUltraMoon;

  IGenerationVii({
    required this.icons,
    required this.ultraSunUltraMoon,
  });

  @override
  List<Object> get props => [icons, ultraSunUltraMoon];
}

class IGenerationViii {
  DreamWorld icons;

  IGenerationViii({
    required this.icons,
  });

  @override
  List<Object> get props => [icons];
}

class IRedBlue {
  String backDefault;
  String backGray;
  String backTransparent;
  String frontDefault;
  String frontGray;
  String frontTransparent;

  IRedBlue({
    required this.backDefault,
    required this.backGray,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontGray,
    required this.frontTransparent,
  });

  @override
  List<Object> get props => [
        backDefault,
        backGray,
        backTransparent,
        frontDefault,
        frontGray,
        frontTransparent
      ];
}

class ICrystal {
  String backDefault;
  String backShiny;
  String backShinyTransparent;
  String backTransparent;
  String frontDefault;
  String frontShiny;
  String frontShinyTransparent;
  String frontTransparent;

  ICrystal({
    required this.backDefault,
    required this.backShiny,
    required this.backShinyTransparent,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontShinyTransparent,
    required this.frontTransparent,
  });

  @override
  List<Object> get props => [
        backDefault,
        backShiny,
        backShinyTransparent,
        backTransparent,
        frontDefault,
        frontShiny,
        frontShinyTransparent,
        frontTransparent
      ];
}

class IGold {
  String backDefault;
  String backShiny;
  String frontDefault;
  String frontShiny;
  String? frontTransparent;

  IGold({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
    this.frontTransparent,
  });

  @override
  List<Object> get props => [backDefault, backShiny, frontDefault, frontShiny];
}

class IOfficialArtwork {
  String frontDefault;
  String frontShiny;

  IOfficialArtwork({
    required this.frontDefault,
    required this.frontShiny,
  });

  @override
  List<Object> get props => [frontDefault, frontShiny];
}

class IDreamWorld {
  String frontDefault;
  dynamic frontFemale;

  IDreamWorld({
    required this.frontDefault,
    required this.frontFemale,
  });

  @override
  List<Object> get props => [frontDefault, frontFemale];
}

class IHome {
  String frontDefault;
  dynamic frontFemale;
  String frontShiny;
  dynamic frontShinyFemale;

  IHome({
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  @override
  List<Object> get props =>
      [frontDefault, frontFemale, frontShiny, frontShinyFemale];
}

class IOther {
  DreamWorld dreamWorld;
  Home home;
  OfficialArtwork officialArtwork;

  IOther({
    required this.dreamWorld,
    required this.home,
    required this.officialArtwork,
  });

  @override
  List<Object> get props => [dreamWorld, home, officialArtwork];
}
