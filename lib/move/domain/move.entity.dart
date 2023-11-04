import 'package:equatable/equatable.dart';

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
    ContestType contestType;
    ContestEffect contestEffect;
    ContestType damageClass;
    List<EffectEntry> effectEntries;
    List<dynamic> effectChanges;
    ContestType generation;
    Meta meta;
    List<Name> names;
    List<dynamic> pastValues;
    List<dynamic> statChanges;
    ContestEffect superContestEffect;
    ContestType target;
    ContestType type;
    List<ContestType> learnedByPokemon;
    List<FlavorTextEntry> flavorTextEntries;

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
        required this.generation,
        required this.meta,
        required this.names,
        required this.pastValues,
        required this.statChanges,
        required this.superContestEffect,
        required this.target,
        required this.type,
        required this.learnedByPokemon,
        required this.flavorTextEntries,
    });
    
  @override
  List<Object> get props => [id, name, accuracy, effectChance, pp, priority, power, contestCombos, contestType, contestEffect, damageClass, effectEntries, effectChanges, generation, meta, names, pastValues, statChanges, superContestEffect, target, type, learnedByPokemon, flavorTextEntries];
} 