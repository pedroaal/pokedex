import 'package:pokedex/domain/pokemon.entity.dart';

class Pokedex extends IPokedex {
  Pokedex({
    required List<PokemonMin> pokemon,
    required String? lastPage,
    required String? nextPage,
  }) : super(
          pokemon: pokemon,
          lastPage: lastPage,
          nextPage: nextPage,
        );

  factory Pokedex.fromJson(Map<String, dynamic> json) => Pokedex(
        pokemon: List<PokemonMin>.from(
            json["results"].map((item) => PokemonMin.fromJson(item))),
        lastPage: json["previous"],
        nextPage: json["next"],
      );

  Map<String, dynamic> toJson() => {
        "pokemon": List<dynamic>.from(pokemon.map((item) => item.toJson())),
        "lastPage": lastPage,
        "nextPage": nextPage,
      };
}

class PokemonMin extends IPokemonMin {
  PokemonMin({
    required String name,
    required String url,
  }) : super(
          name: name,
          url: url,
        );

  factory PokemonMin.fromJson(Map<String, dynamic> json) => PokemonMin(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

class Evolution extends IEvolution {
  Evolution({
    required String num,
    required String name,
  }) : super(
          num: num,
          name: name,
        );

  factory Evolution.fromJson(Map<String, dynamic> json) => Evolution(
        num: json["num"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "num": num,
        "name": name,
      };
}

class Pokemon extends IPokemon {
  Pokemon({
    required int id,
    required String num,
    required String name,
    required String img,
    required List<Type> type,
    required String height,
    required String weight,
    required String candy,
    int? candyCount,
    required Egg egg,
    required double spawnChance,
    required double avgSpawns,
    required String spawnTime,
    required List<double>? multipliers,
    required List<Type> weaknesses,
    List<Evolution>? nextEvolution,
    List<Evolution>? prevEvolution,
  }) : super(
          id: id,
          num: num,
          name: name,
          img: img,
          type: type,
          height: height,
          weight: weight,
          candy: candy,
          candyCount: candyCount,
          egg: egg,
          spawnChance: spawnChance,
          avgSpawns: avgSpawns,
          spawnTime: spawnTime,
          multipliers: multipliers,
          weaknesses: weaknesses,
          nextEvolution: nextEvolution,
          prevEvolution: prevEvolution,
        );

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        id: json["id"],
        num: json["num"],
        name: json["name"],
        img: json["img"],
        type:
            List<Type>.from(json["type"].map((item) => typeValues.map[item]!)),
        height: json["height"],
        weight: json["weight"],
        candy: json["candy"],
        candyCount: json["candy_count"],
        egg: eggValues.map[json["egg"]]!,
        spawnChance: json["spawn_chance"]?.toDouble(),
        avgSpawns: json["avg_spawns"]?.toDouble(),
        spawnTime: json["spawn_time"],
        multipliers: json["multipliers"] == null
            ? []
            : List<double>.from(
                json["multipliers"]!.map((item) => item?.toDouble())),
        weaknesses: List<Type>.from(
            json["weaknesses"].map((item) => typeValues.map[item]!)),
        nextEvolution: json["next_evolution"] == null
            ? []
            : List<Evolution>.from(json["next_evolution"]!
                .map((item) => Evolution.fromJson(item))),
        prevEvolution: json["prev_evolution"] == null
            ? []
            : List<Evolution>.from(json["prev_evolution"]!
                .map((item) => Evolution.fromJson(item))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "num": num,
        "name": name,
        "img": img,
        "type":
            List<dynamic>.from(type.map((item) => typeValues.reverse[item])),
        "height": height,
        "weight": weight,
        "candy": candy,
        "candy_count": candyCount,
        "egg": eggValues.reverse[egg],
        "spawn_chance": spawnChance,
        "avg_spawns": avgSpawns,
        "spawn_time": spawnTime,
        "multipliers": multipliers == null
            ? []
            : List<dynamic>.from(multipliers!.map((item) => item)),
        "weaknesses": List<dynamic>.from(
            weaknesses.map((item) => typeValues.reverse[item])),
        "next_evolution": nextEvolution == null
            ? []
            : List<dynamic>.from(nextEvolution!.map((item) => item.toJson())),
        "prev_evolution": prevEvolution == null
            ? []
            : List<dynamic>.from(prevEvolution!.map((item) => item.toJson())),
      };
}
