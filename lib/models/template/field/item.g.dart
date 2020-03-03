// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item(
    active: json['active'] as bool,
    enableButton: json['enable_button'] as bool,
  );
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'active': instance.active,
      'enable_button': instance.enableButton,
    };
