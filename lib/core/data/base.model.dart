import 'package:pokedex/core/domain/base.entity.dart';

class Resource extends IResource {
  Resource({
    required String url,
  }) : super(url: url);

  factory Resource.fromJson(Map<String, dynamic> json) => Resource(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}

class NamedResource extends INamedResource {
  NamedResource({
    required String name,
    required String url,
  }) : super(name: name, url: url);

  factory NamedResource.fromJson(Map<String, dynamic> json) => NamedResource(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
