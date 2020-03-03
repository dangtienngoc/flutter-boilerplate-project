import 'package:json_annotation/json_annotation.dart';

part 'field.g.dart';

@JsonSerializable(includeIfNull: true)
class Field {
  String type;
  String name;

  Field({
    this.type,
    this.name,
  });

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldToJson(this);
}
