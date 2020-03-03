import 'package:boilerplate/models/template/component.dart';
import 'package:json_annotation/json_annotation.dart';

part 'template.g.dart';

@JsonSerializable(includeIfNull: true)
class Template {
  String id;
  String name;

  @JsonKey(name: 'data')
  List<Component> components;

  Template({
    this.id,
    this.name,
  });

  factory Template.fromJson(Map<String, dynamic> json) =>
      _$TemplateFromJson(json);

  Map<String, dynamic> toJson() => _$TemplateToJson(this);
}
