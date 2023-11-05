import 'package:equatable/equatable.dart';

import 'package:pokedex/core/data/base.model.dart';
import 'package:pokedex/move/data/move.model.dart';

class IMove {
  int id;
  String name;
  int accuracy;
  int effectChance;
  int pp;
  int priority;
  int power;
  ContestCombos contestCombos;
  NamedApiResource contestType;
  ApiResource contestEffect;
  NamedApiResource damageClass;
  List<VerboseEffect> effectEntries;
  List<AbilityEffectChange> effectChanges;
  List<NamedApiResource> learnedByPokemon;
  List<MoveFlavorText> flavorTextEntries;
  NamedApiResource generation;
  List<MachineVersionDetail> machines;
  Meta meta;
  List<Name> names;
  List<PastMoveStatValues> pastValues;
  List<MoveStatChange> statChanges;
  ApiResource superContestEffect;
  NamedApiResource target;
  NamedApiResource type;

  IMove({
    required this.id,
    required this.name,
    required this.accuracy,
    required this.effectChance,
    required this.pp,
    required this.priority,
    required this.power,
    required this.contestCombos,
    required this.contestType,
    required this.contestEffect,
    required this.damageClass,
    required this.effectEntries,
    required this.effectChanges,
    required this.learnedByPokemon,
    required this.flavorTextEntries,
    required this.generation,
    required this.machines,
    required this.meta,
    required this.names,
    required this.pastValues,
    required this.statChanges,
    required this.superContestEffect,
    required this.target,
    required this.type,
  });

  @override
  List<Object> get props => [
        id,
        name,
        accuracy,
        effectChance,
        pp,
        priority,
        power,
        contestCombos,
        contestType,
        contestEffect,
        damageClass,
        effectEntries,
        effectChanges,
        generation,
        meta,
        names,
        pastValues,
        statChanges,
        superContestEffect,
        target,
        type,
        learnedByPokemon,
        flavorTextEntries
      ];
}

class IContestCombos {
  ContestComboDetail normal;
  ContestComboDetail contestCombosSuper;

  IContestCombos({
    required this.normal,
    required this.contestCombosSuper,
  });

  @override
  List<Object> get props => [
        normal,
        contestCombosSuper,
      ];
}

class IContestComboDetail {
  List<NamedApiResource> useBefore;
  List<NamedApiResource> useAfter;

  IContestComboDetail({
    required this.useBefore,
    required this.useAfter,
  });

  @override
  List<Object> get props => [
        useBefore,
        useAfter,
      ];
}

class IAbilityEffectChange {
  List<Effect> effectEntries;
  NamedApiResource versionGroup;

  IAbilityEffectChange({
    required this.effectEntries,
    required this.versionGroup,
  });

  @override
  List<Object> get props => [
        effectEntries,
        versionGroup,
      ];
}

class IEffect {
  String effect;
  NamedApiResource language;

  IEffect({
    required this.effect,
    required this.language,
  });

  @override
  List<Object> get props => [
        effect,
        language,
      ];
}

class IMoveFlavorText {
  String flavorText;
  NamedApiResource language;
  NamedApiResource versionGroup;

  IMoveFlavorText({
    required this.flavorText,
    required this.language,
    required this.versionGroup,
  });

  @override
  List<Object> get props => [
        flavorText,
        language,
        versionGroup,
      ];
}

class IMeta {
  NamedApiResource ailment;
  NamedApiResource category;
  int minHits;
  int maxHits;
  int minTurns;
  int maxTurns;
  int drain;
  int healing;
  int critRate;
  int ailmentChance;
  int flinchChance;
  int statChance;

  IMeta({
    required this.ailment,
    required this.category,
    required this.minHits,
    required this.maxHits,
    required this.minTurns,
    required this.maxTurns,
    required this.drain,
    required this.healing,
    required this.critRate,
    required this.ailmentChance,
    required this.flinchChance,
    required this.statChance,
  });

  @override
  List<Object> get props => [
        ailment,
        category,
        minHits,
        maxHits,
        minTurns,
        maxTurns,
        drain,
        healing,
        critRate,
        ailmentChance,
        flinchChance,
        statChance,
      ];
}

class IPastMoveStatValues {
  int accuracy;
  int effectChance;
  int power;
  int pp;
  List<VerboseEffect> effectEntries;
  NamedApiResource type;
  NamedApiResource versionGroup;

  IPastMoveStatValues({
    required this.accuracy,
    required this.effectChance,
    required this.power,
    required this.pp,
    required this.effectEntries,
    required this.type,
    required this.versionGroup,
  });

  @override
  List<Object> get props => [
        accuracy,
        effectChance,
        power,
        pp,
        effectEntries,
        type,
        versionGroup,
      ];
}

class IMoveStatChange {
  int change;
  NamedApiResource stat;

  IMoveStatChange({
    required this.change,
    required this.stat,
  });

  @override
  List<Object> get props => [
        change,
        stat,
      ];
}
