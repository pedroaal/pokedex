import 'dart:convert';

import 'package:pokedex/core/data/base.model.dart';
import 'package:pokedex/move/domain/move.entity.dart';

Move moveFromJson(String str) => Move.fromJson(json.decode(str));

String moveToJson(Move data) => json.encode(data.toJson());

class Move extends IMove {
  Move({
    required int id,
    required String name,
    int? accuracy,
    int? effectChance,
    required int pp,
    required int priority,
    required int power,
    ContestCombos? contestCombos,
    required NamedApiResource contestType,
    required ApiResource contestEffect,
    required NamedApiResource damageClass,
    required List<VerboseEffect> effectEntries,
    required List<AbilityEffectChange> effectChanges,
    required List<NamedApiResource> learnedByPokemon,
    required List<MoveFlavorText> flavorTextEntries,
    required NamedApiResource generation,
    required List<MachineVersionDetail> machines,
    required Meta meta,
    required List<Name> names,
    required List<PastMoveStatValues> pastValues,
    required List<MoveStatChange> statChanges,
    required ApiResource superContestEffect,
    required NamedApiResource target,
    required NamedApiResource type,
  }) : super(
          id: id,
          name: name,
          accuracy: accuracy,
          effectChance: effectChance,
          pp: pp,
          priority: priority,
          power: power,
          contestCombos: contestCombos,
          contestType: contestType,
          contestEffect: contestEffect,
          damageClass: damageClass,
          effectEntries: effectEntries,
          effectChanges: effectChanges,
          learnedByPokemon: learnedByPokemon,
          flavorTextEntries: flavorTextEntries,
          generation: generation,
          machines: machines,
          meta: meta,
          names: names,
          pastValues: pastValues,
          statChanges: statChanges,
          superContestEffect: superContestEffect,
          target: target,
          type: type,
        );

  factory Move.fromJson(Map<String, dynamic> json) => Move(
        id: json["id"],
        name: json["name"],
        accuracy: json["accuracy"],
        effectChance: json["effect_chance"],
        pp: json["pp"],
        priority: json["priority"],
        power: json["power"],
        contestCombos: json["contest_combos"] != null
            ? ContestCombos.fromJson(json["contest_combos"])
            : null,
        contestType: NamedApiResource.fromJson(json["contest_type"]),
        contestEffect: ApiResource.fromJson(json["contest_effect"]),
        damageClass: NamedApiResource.fromJson(json["damage_class"]),
        effectEntries: List<VerboseEffect>.from(
            json["effect_entries"].map((x) => VerboseEffect.fromJson(x))),
        effectChanges: List<AbilityEffectChange>.from(
            json["effect_changes"].map((x) => AbilityEffectChange.fromJson(x))),
        learnedByPokemon: List<NamedApiResource>.from(json["learned_by_pokemon"]
            .map((x) => NamedApiResource.fromJson(x))),
        flavorTextEntries: List<MoveFlavorText>.from(
            json["flavor_text_entries"].map((x) => MoveFlavorText.fromJson(x))),
        generation: NamedApiResource.fromJson(json["generation"]),
        machines: List<MachineVersionDetail>.from(
            json["machines"].map((x) => MachineVersionDetail.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
        names: List<Name>.from(json["names"].map((x) => Name.fromJson(x))),
        pastValues: List<PastMoveStatValues>.from(
            json["past_values"].map((x) => PastMoveStatValues.fromJson(x))),
        statChanges: List<MoveStatChange>.from(
            json["stat_changes"].map((x) => MoveStatChange.fromJson(x))),
        superContestEffect: ApiResource.fromJson(json["super_contest_effect"]),
        target: NamedApiResource.fromJson(json["target"]),
        type: NamedApiResource.fromJson(json["type"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "accuracy": accuracy,
        "effect_chance": effectChance,
        "pp": pp,
        "priority": priority,
        "power": power,
        "contest_combos": contestCombos!.toJson(),
        "contest_type": contestType.toJson(),
        "contest_effect": contestEffect.toJson(),
        "damage_class": damageClass.toJson(),
        "effect_entries":
            List<dynamic>.from(effectEntries.map((x) => x.toJson())),
        "effect_changes":
            List<dynamic>.from(effectChanges.map((x) => x.toJson())),
        "learned_by_pokemon":
            List<dynamic>.from(learnedByPokemon.map((x) => x.toJson())),
        "flavor_text_entries":
            List<dynamic>.from(flavorTextEntries.map((x) => x.toJson())),
        "generation": generation.toJson(),
        "machines": List<dynamic>.from(machines.map((x) => x.toJson())),
        "meta": meta.toJson(),
        "names": List<dynamic>.from(names.map((x) => x.toJson())),
        "past_values": List<dynamic>.from(pastValues.map((x) => x.toJson())),
        "stat_changes": List<dynamic>.from(statChanges.map((x) => x.toJson())),
        "super_contest_effect": superContestEffect.toJson(),
        "target": target.toJson(),
        "type": type.toJson(),
      };
}

class ContestCombos extends IContestCombos {
  ContestCombos({
    required ContestComboDetail normal,
    required ContestComboDetail contestCombosSuper,
  }) : super(
          normal: normal,
          contestCombosSuper: contestCombosSuper,
        );

  factory ContestCombos.fromJson(Map<String, dynamic> json) => ContestCombos(
        normal: ContestComboDetail.fromJson(json["normal"]),
        contestCombosSuper: ContestComboDetail.fromJson(json["super"]),
      );

  Map<String, dynamic> toJson() => {
        "normal": normal.toJson(),
        "super": contestCombosSuper.toJson(),
      };
}

class ContestComboDetail extends IContestComboDetail {
  ContestComboDetail({
    List<NamedApiResource>? useBefore,
    List<NamedApiResource>? useAfter,
  }) : super(
          useBefore: useBefore,
          useAfter: useAfter,
        );

  factory ContestComboDetail.fromJson(Map<String, dynamic> json) =>
      ContestComboDetail(
          useBefore: json["use_before"] != null
              ? List<NamedApiResource>.from(
                  json["use_before"].map((x) => NamedApiResource.fromJson(x)))
              : [],
          useAfter: json["use_after"] != null
              ? List<NamedApiResource>.from(
                  json["use_after"].map((x) => NamedApiResource.fromJson(x)))
              : []);

  Map<String, dynamic> toJson() => {
        "use_before": List<dynamic>.from(useBefore!.map((x) => x.toJson())),
        "use_after": List<dynamic>.from(useAfter!.map((x) => x.toJson())),
      };
}

class AbilityEffectChange extends IAbilityEffectChange {
  AbilityEffectChange({
    required List<Effect> effectEntries,
    required NamedApiResource versionGroup,
  }) : super(
          effectEntries: effectEntries,
          versionGroup: versionGroup,
        );

  factory AbilityEffectChange.fromJson(Map<String, dynamic> json) =>
      AbilityEffectChange(
        effectEntries: List<Effect>.from(
            json["effect_entries"].map((x) => Effect.fromJson(x))),
        versionGroup: NamedApiResource.fromJson(json["version_group"]),
      );

  Map<String, dynamic> toJson() => {
        "effect_entries":
            List<dynamic>.from(effectEntries.map((x) => x.toJson())),
        "version_group": versionGroup.toJson(),
      };
}

class Effect extends IEffect {
  Effect({
    required String effect,
    required NamedApiResource language,
  }) : super(effect: effect, language: language);

  factory Effect.fromJson(Map<String, dynamic> json) => Effect(
        effect: json["effect"],
        language: NamedApiResource.fromJson(json["language"]),
      );

  Map<String, dynamic> toJson() => {
        "effect": effect,
        "language": language.toJson(),
      };
}

class MoveFlavorText extends IMoveFlavorText {
  MoveFlavorText({
    required String flavorText,
    required NamedApiResource language,
    required NamedApiResource versionGroup,
  }) : super(
            flavorText: flavorText,
            language: language,
            versionGroup: versionGroup);

  factory MoveFlavorText.fromJson(Map<String, dynamic> json) => MoveFlavorText(
        flavorText: json["flavor_text"],
        language: NamedApiResource.fromJson(json["language"]),
        versionGroup: NamedApiResource.fromJson(json["version_group"]),
      );

  Map<String, dynamic> toJson() => {
        "flavor_text": flavorText,
        "language": language.toJson(),
        "version_group": versionGroup.toJson(),
      };
}

class Meta extends IMeta {
  Meta({
    required NamedApiResource ailment,
    required NamedApiResource category,
    int? minHits,
    int? maxHits,
    int? minTurns,
    int? maxTurns,
    required int drain,
    required int healing,
    required int critRate,
    required int ailmentChance,
    required int flinchChance,
    required int statChance,
  }) : super(
          ailment: ailment,
          category: category,
          minHits: minHits,
          maxHits: maxHits,
          minTurns: minTurns,
          maxTurns: maxTurns,
          drain: drain,
          healing: healing,
          critRate: critRate,
          ailmentChance: ailmentChance,
          flinchChance: flinchChance,
          statChance: statChance,
        );

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        ailment: NamedApiResource.fromJson(json["ailment"]),
        category: NamedApiResource.fromJson(json["category"]),
        minHits: json["min_hits"],
        maxHits: json["max_hits"],
        minTurns: json["min_turns"],
        maxTurns: json["max_turns"],
        drain: json["drain"],
        healing: json["healing"],
        critRate: json["crit_rate"],
        ailmentChance: json["ailment_chance"],
        flinchChance: json["flinch_chance"],
        statChance: json["stat_chance"],
      );

  Map<String, dynamic> toJson() => {
        "ailment": ailment.toJson(),
        "category": category.toJson(),
        "min_hits": minHits,
        "max_hits": maxHits,
        "min_turns": minTurns,
        "max_turns": maxTurns,
        "drain": drain,
        "healing": healing,
        "crit_rate": critRate,
        "ailment_chance": ailmentChance,
        "flinch_chance": flinchChance,
        "stat_chance": statChance,
      };
}

class PastMoveStatValues extends IPastMoveStatValues {
  PastMoveStatValues({
    int? accuracy,
    int? effectChance,
    required int power,
    required int pp,
    required List<VerboseEffect> effectEntries,
    required NamedApiResource type,
    required NamedApiResource versionGroup,
  }) : super(
          accuracy: accuracy,
          effectChance: effectChance,
          power: power,
          pp: pp,
          effectEntries: effectEntries,
          type: type,
          versionGroup: versionGroup,
        );

  factory PastMoveStatValues.fromJson(Map<String, dynamic> json) =>
      PastMoveStatValues(
        accuracy: json["accuracy"],
        effectChance: json["effect_chance"],
        power: json["power"],
        pp: json["pp"],
        effectEntries: List<VerboseEffect>.from(
            json["effect_entries"].map((x) => VerboseEffect.fromJson(x))),
        type: NamedApiResource.fromJson(json["type"]),
        versionGroup: NamedApiResource.fromJson(json["version_group"]),
      );

  Map<String, dynamic> toJson() => {
        "accuracy": accuracy,
        "effect_chance": effectChance,
        "power": power,
        "pp": pp,
        "effect_entries":
            List<dynamic>.from(effectEntries.map((x) => x.toJson())),
        "type": type.toJson(),
        "version_group": versionGroup.toJson(),
      };
}

class MoveStatChange extends IMoveStatChange {
  MoveStatChange({
    required int change,
    required NamedApiResource stat,
  }) : super(change: change, stat: stat);

  factory MoveStatChange.fromJson(Map<String, dynamic> json) => MoveStatChange(
        change: json["change"],
        stat: NamedApiResource.fromJson(json["stat"]),
      );

  Map<String, dynamic> toJson() => {
        "change": change,
        "stat": stat.toJson(),
      };
}
