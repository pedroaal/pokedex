import 'package:pokedex/core/domain/base.entity.dart';

class ApiResource extends IApiResource {
  ApiResource({
    required String url,
  }) : super(url: url);

  factory ApiResource.fromJson(Map<String, dynamic> json) => ApiResource(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}

class NamedApiResource extends INamedApiResource {
  NamedApiResource({
    required String name,
    required String url,
  }) : super(name: name, url: url);

  factory NamedApiResource.fromJson(Map<String, dynamic> json) =>
      NamedApiResource(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

class VerboseEffect extends IVerboseEffect {
  VerboseEffect({
    required String effect,
    required String shortEffect,
    required NamedApiResource language,
  }) : super(
          effect: effect,
          shortEffect: shortEffect,
          language: language,
        );

  factory VerboseEffect.fromJson(Map<String, dynamic> json) => VerboseEffect(
        effect: json["effect"],
        shortEffect: json["short_effect"],
        language: NamedApiResource.fromJson(json["language"]),
      );

  Map<String, dynamic> toJson() => {
        "effect": effect,
        "short_effect": shortEffect,
        "language": language.toJson(),
      };
}

class Name extends IName {
  Name({
    required String name,
    required NamedApiResource language,
  }) : super(name: name, language: language);

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        name: json["name"],
        language: NamedApiResource.fromJson(json["language"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "language": language.toJson(),
      };
}

class MachineVersionDetail extends IMachineVersionDetail {
  MachineVersionDetail({
    required ApiResource machine,
    required NamedApiResource versionGroup,
  }) : super(
          machine: machine,
          versionGroup: versionGroup,
        );

  factory MachineVersionDetail.fromJson(Map<String, dynamic> json) =>
      MachineVersionDetail(
        machine: ApiResource.fromJson(json["flavor_text"]),
        versionGroup: NamedApiResource.fromJson(json["versionGroup"]),
      );

  Map<String, dynamic> toJson() => {
        "machine": machine.toJson(),
        "version_group": versionGroup.toJson(),
      };
}

class VersionGameIndex extends IVersionGameIndex {
  VersionGameIndex({
    required int gameIndex,
    required NamedApiResource version,
  }) : super(gameIndex: gameIndex, version: version);

  factory VersionGameIndex.fromJson(Map<String, dynamic> json) =>
      VersionGameIndex(
        gameIndex: json["game_index"],
        version: NamedApiResource.fromJson(json["version"]),
      );

  Map<String, dynamic> toJson() => {
        "game_index": gameIndex,
        "version": version.toJson(),
      };
}

class VersionGroupFlavorText extends IVersionGroupFlavorText {
  VersionGroupFlavorText({
    required String text,
    required NamedApiResource language,
    required NamedApiResource versionGroup,
  }) : super(
          text: text,
          language: language,
          versionGroup: versionGroup,
        );

  factory VersionGroupFlavorText.fromJson(Map<String, dynamic> json) =>
      VersionGroupFlavorText(
        text: json["text"],
        language: NamedApiResource.fromJson(json["language"]),
        versionGroup: NamedApiResource.fromJson(json["versionGroup"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "language": language.toJson(),
        "version_group": versionGroup.toJson(),
      };
}

class GenerationGameIndex extends IGenerationGameIndex {
  GenerationGameIndex({
    required int gameIndex,
    required NamedApiResource generation,
  }) : super(
          gameIndex: gameIndex,
          generation: generation,
        );

  factory GenerationGameIndex.fromJson(Map<String, dynamic> json) =>
      GenerationGameIndex(
        gameIndex: json["game_index"],
        generation: NamedApiResource.fromJson(json["generation"]),
      );

  Map<String, dynamic> toJson() => {
        "game_index": gameIndex,
        "generation": generation.toJson(),
      };
}
