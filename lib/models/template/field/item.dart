import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable(includeIfNull: true)
class Item {
  bool active;

  @JsonKey(name: 'enable_button')
  bool enableButton;

  Item({
    this.active,
    this.enableButton,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}

class Items {
  final List<Item> items;

  Items({
    this.items,
  });

  factory Items.fromJson(List<dynamic> json) {
    List<Item> items = List<Item>();
    items = json.map((item) => Item.fromJson(item)).toList();

    return Items(
      items: items,
    );
  }
}
