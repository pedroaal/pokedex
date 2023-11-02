import 'dart:convert';

Pokedex pokedexFromJson(String str) => Pokedex.fromJson(json.decode(str));

String pokedexToJson(Pokedex data) => json.encode(data.toJson());

class Pokedex {
  List<PokemonMin> pokemon;
  String? lastPage;
  String? nextPage;

  Pokedex({
    required this.pokemon,
    required this.lastPage,
    required this.nextPage,
  });

  factory Pokedex.fromJson(Map<String, dynamic> json) => Pokedex(
        pokemon: List<PokemonMin>.from(
            json["results"].map((x) => PokemonMin.fromJson(x))),
        lastPage: json["previous"],
        nextPage: json["next"],
      );

  Map<String, dynamic> toJson() => {
        "pokemon": List<dynamic>.from(pokemon.map((x) => x.toJson())),
        "lastPage": lastPage,
        "nextPage": nextPage,
      };
}

class PokemonMin {
  String name;
  String url;

  PokemonMin({
    required this.name,
    required this.url,
  });

  factory PokemonMin.fromJson(Map<String, dynamic> json) => PokemonMin(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

class Pokemon {
  int id;
  String num;
  String name;
  String img;
  List<Type> type;
  String height;
  String weight;
  String candy;
  int? candyCount;
  Egg egg;
  double spawnChance;
  double avgSpawns;
  String spawnTime;
  List<double>? multipliers;
  List<Type> weaknesses;
  List<Evolution>? nextEvolution;
  List<Evolution>? prevEvolution;

  Pokemon({
    required this.id,
    required this.num,
    required this.name,
    required this.img,
    required this.type,
    required this.height,
    required this.weight,
    required this.candy,
    this.candyCount,
    required this.egg,
    required this.spawnChance,
    required this.avgSpawns,
    required this.spawnTime,
    required this.multipliers,
    required this.weaknesses,
    this.nextEvolution,
    this.prevEvolution,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        id: json["id"],
        num: json["num"],
        name: json["name"],
        img: json["img"],
        type: List<Type>.from(json["type"].map((x) => typeValues.map[x]!)),
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
            : List<double>.from(json["multipliers"]!.map((x) => x?.toDouble())),
        weaknesses:
            List<Type>.from(json["weaknesses"].map((x) => typeValues.map[x]!)),
        nextEvolution: json["next_evolution"] == null
            ? []
            : List<Evolution>.from(
                json["next_evolution"]!.map((x) => Evolution.fromJson(x))),
        prevEvolution: json["prev_evolution"] == null
            ? []
            : List<Evolution>.from(
                json["prev_evolution"]!.map((x) => Evolution.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "num": num,
        "name": name,
        "img": img,
        "type": List<dynamic>.from(type.map((x) => typeValues.reverse[x])),
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
            : List<dynamic>.from(multipliers!.map((x) => x)),
        "weaknesses":
            List<dynamic>.from(weaknesses.map((x) => typeValues.reverse[x])),
        "next_evolution": nextEvolution == null
            ? []
            : List<dynamic>.from(nextEvolution!.map((x) => x.toJson())),
        "prev_evolution": prevEvolution == null
            ? []
            : List<dynamic>.from(prevEvolution!.map((x) => x.toJson())),
      };
}

enum Egg { NOT_IN_EGGS, OMANYTE_CANDY, THE_10_KM, THE_2_KM, THE_5_KM }

final eggValues = EnumValues({
  "Not in Eggs": Egg.NOT_IN_EGGS,
  "Omanyte Candy": Egg.OMANYTE_CANDY,
  "10 km": Egg.THE_10_KM,
  "2 km": Egg.THE_2_KM,
  "5 km": Egg.THE_5_KM
});

class Evolution {
  String num;
  String name;

  Evolution({
    required this.num,
    required this.name,
  });

  factory Evolution.fromJson(Map<String, dynamic> json) => Evolution(
        num: json["num"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "num": num,
        "name": name,
      };
}

enum Type {
  BUG,
  DARK,
  DRAGON,
  ELECTRIC,
  FAIRY,
  FIGHTING,
  FIRE,
  FLYING,
  GHOST,
  GRASS,
  GROUND,
  ICE,
  NORMAL,
  POISON,
  PSYCHIC,
  ROCK,
  STEEL,
  WATER
}

final typeValues = EnumValues({
  "Bug": Type.BUG,
  "Dark": Type.DARK,
  "Dragon": Type.DRAGON,
  "Electric": Type.ELECTRIC,
  "Fairy": Type.FAIRY,
  "Fighting": Type.FIGHTING,
  "Fire": Type.FIRE,
  "Flying": Type.FLYING,
  "Ghost": Type.GHOST,
  "Grass": Type.GRASS,
  "Ground": Type.GROUND,
  "Ice": Type.ICE,
  "Normal": Type.NORMAL,
  "Poison": Type.POISON,
  "Psychic": Type.PSYCHIC,
  "Rock": Type.ROCK,
  "Steel": Type.STEEL,
  "Water": Type.WATER
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
