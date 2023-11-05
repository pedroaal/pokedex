import 'package:equatable/equatable.dart';

import 'package:pokedex/core/data/base.model.dart';

class IApiResource {
  String url;

  IApiResource({
    required this.url,
  });

  @override
  List<Object> get props => [url];
}

class INamedApiResource {
  String name;
  String url;

  INamedApiResource({
    required this.name,
    required this.url,
  });

  @override
  List<Object> get props => [name, url];
}

class IVerboseEffect {
  String effect;
  String shortEffect;
  NamedApiResource language;

  IVerboseEffect({
    required this.effect,
    required this.shortEffect,
    required this.language,
  });

  @override
  List<Object> get props => [
        effect,
        shortEffect,
        language,
      ];
}

class IName {
  String name;
  NamedApiResource language;

  IName({
    required this.name,
    required this.language,
  });

  @override
  List<Object> get props => [
        name,
        language,
      ];
}

class IMachineVersionDetail {
  ApiResource machine;
  NamedApiResource versionGroup;

  IMachineVersionDetail({
    required this.machine,
    required this.versionGroup,
  });

  @override
  List<Object> get props => [
        machine,
        versionGroup,
      ];
}

class IVersionGameIndex {
  int gameIndex;
  NamedApiResource version;

  IVersionGameIndex({
    required this.gameIndex,
    required this.version,
  });

  @override
  List<Object> get props => [gameIndex, version];
}

class IVersionGroupFlavorText {
  String text;
  NamedApiResource language;
  NamedApiResource versionGroup;

  IVersionGroupFlavorText({
    required this.text,
    required this.language,
    required this.versionGroup,
  });

  @override
  List<Object> get props => [text, language, versionGroup];
}

class IGenerationGameIndex {
  int gameIndex;
  NamedApiResource generation;

  IGenerationGameIndex({
    required this.gameIndex,
    required this.generation,
  });

  @override
  List<Object> get props => [gameIndex, generation];
}
