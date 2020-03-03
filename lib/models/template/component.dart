import 'package:boilerplate/models/template/field/item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'component.g.dart';

@JsonSerializable(includeIfNull: true)
class Component {
  String type;
  String name;

  @JsonKey(name: 'fields', fromJson: _fromJson)
  Map<String, dynamic> fields;

  Component({
    this.type,
    this.name,
    this.fields,
  });

  factory Component.fromJson(Map<String, dynamic> json) =>
      _$ComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ComponentToJson(this);

  static Map<String, dynamic> _fromJson(List<dynamic> fields) {
    return Map.fromIterable(fields,
        key: (item) => item['key'],
        value: (item) {
          // With Items
          if (item['field'] == 'items') {
            return item['value'].map((item) {
              return Item.fromJson(item);
            }).toList();
          }
          return item['value'] ?? item['defaultValue'];
        });
  }
}
