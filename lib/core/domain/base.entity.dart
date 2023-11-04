import 'package:equatable/equatable.dart';

class IResource {
  String url;

  IResource({
    required this.url,
  });

  @override
  List<Object> get props => [url];
}

class INamedResource {
  String name;
  String url;

  INamedResource({
    required this.name,
    required this.url,
  });

  @override
  List<Object> get props => [name, url];
}
