// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Component _$ComponentFromJson(Map<String, dynamic> json) {
  return Component(
    type: json['type'] as String,
    name: json['name'] as String,
    fields: Component._fromJson(json['fields'] as List),
  );
}

Map<String, dynamic> _$ComponentToJson(Component instance) => <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'fields': instance.fields,
    };
