import 'package:json_annotation/json_annotation.dart';

part 'boxed.g.dart';

@JsonSerializable(includeIfNull: true)
class Boxed {
  String type;
  String name;

  Boxed({
    this.type,
    this.name,
  });

  factory Boxed.fromJson(Map<String, dynamic> json) => _$BoxedFromJson(json);

  Map<String, dynamic> toJson() => _$BoxedToJson(this);
}
