import 'dart:convert';

import 'package:pokedex/core/data/base.model.dart';
import 'package:pokedex/item/domain/item.entity.dart';

Item itemFromJson(String str) => Item.fromJson(json.decode(str));

String itemToJson(Item data) => json.encode(data.toJson());

class Item extends IItem {
  Item({
    required int id,
    required String name,
    required int cost,
    required int flingPower,
    required NamedApiResource flingEffect,
    required List<NamedApiResource> attributes,
    required NamedApiResource category,
    required List<VerboseEffect> effectEntries,
    required List<VersionGroupFlavorText> flavorTextEntries,
    required List<GenerationGameIndex> gameIndices,
    required List<Name> names,
    required ItemSprites sprites,
    required List<ItemHolderPokemon> heldByPokemon,
    required ApiResource babyTriggerFor,
    required MachineVersionDetail machines,
  }) : super(
          id: id,
          name: name,
          cost: cost,
          flingPower: flingPower,
          flingEffect: flingEffect,
          attributes: attributes,
          category: category,
          effectEntries: effectEntries,
          flavorTextEntries: flavorTextEntries,
          gameIndices: gameIndices,
          names: names,
          sprites: sprites,
          heldByPokemon: heldByPokemon,
          babyTriggerFor: babyTriggerFor,
          machines: machines,
        );

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        name: json["name"],
        cost: json["cost"],
        flingPower: json["fling_power"],
        flingEffect: NamedApiResource.fromJson(json["fling_effect"]),
        attributes: List<NamedApiResource>.from(
            json["attributes"].map((x) => NamedApiResource.fromJson(x))),
        category: NamedApiResource.fromJson(json["category"]),
        effectEntries: List<VerboseEffect>.from(
            json["effect_entries"].map((x) => VerboseEffect.fromJson(x))),
        flavorTextEntries: List<VersionGroupFlavorText>.from(
            json["flavor_text_entries"]
                .map((x) => VersionGroupFlavorText.fromJson(x))),
        gameIndices: List<GenerationGameIndex>.from(
            json["game_indices"].map((x) => GenerationGameIndex.fromJson(x))),
        names: List<Name>.from(json["names"].map((x) => Name.fromJson(x))),
        sprites: ItemSprites.fromJson(json["sprites"]),
        heldByPokemon: List<ItemHolderPokemon>.from(
            json["held_by_pokemon"].map((x) => ItemHolderPokemon.fromJson(x))),
        babyTriggerFor: ApiResource.fromJson(json["baby_trigger_for"]),
        machines: MachineVersionDetail.fromJson(json["machines"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "cost": cost,
        "fling_power": flingPower,
        "fling_effect": flingEffect.toJson(),
        "attributes": List<dynamic>.from(attributes.map((x) => x.toJson())),
        "category": category.toJson(),
        "effect_entries":
            List<dynamic>.from(effectEntries.map((x) => x.toJson())),
        "flavor_text_entries":
            List<dynamic>.from(flavorTextEntries.map((x) => x.toJson())),
        "game_indices": List<dynamic>.from(gameIndices.map((x) => x.toJson())),
        "names": List<dynamic>.from(names.map((x) => x.toJson())),
        "sprites": sprites.toJson(),
        "held_by_pokemon":
            List<dynamic>.from(heldByPokemon.map((x) => x.toJson())),
        "baby_trigger_for": babyTriggerFor.toJson(),
        "machines": machines.toJson(),
      };
}

class ItemSprites extends IItemSprites {
  ItemSprites({
    required String def,
  }) : super(
          def: def,
        );

  factory ItemSprites.fromJson(Map<String, dynamic> json) => ItemSprites(
        def: json["default"],
      );

  Map<String, dynamic> toJson() => {
        "default": def,
      };
}

class ItemHolderPokemon extends IItemHolderPokemon {
  ItemHolderPokemon({
    required NamedApiResource pokemon,
    required List<ItemHolderPokemonVersionDetail> versionDetails,
  }) : super(
          pokemon: pokemon,
          versionDetails: versionDetails,
        );

  factory ItemHolderPokemon.fromJson(Map<String, dynamic> json) =>
      ItemHolderPokemon(
        pokemon: NamedApiResource.fromJson(json["pokemon"]),
        versionDetails: List<ItemHolderPokemonVersionDetail>.from(
            json["version_details"]
                .map((x) => ItemHolderPokemonVersionDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pokemon": pokemon.toJson(),
        "version_details":
            List<dynamic>.from(versionDetails.map((x) => x.toJson())),
      };
}

class ItemHolderPokemonVersionDetail extends IItemHolderPokemonVersionDetail {
  ItemHolderPokemonVersionDetail({
    required int rarity,
    required NamedApiResource version,
  }) : super(
          rarity: rarity,
          version: version,
        );

  factory ItemHolderPokemonVersionDetail.fromJson(Map<String, dynamic> json) =>
      ItemHolderPokemonVersionDetail(
        rarity: json["rarity"],
        version: NamedApiResource.fromJson(json["version"]),
      );

  Map<String, dynamic> toJson() => {
        "rarity": rarity,
        "version": version.toJson(),
      };
}
