// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Template _$TemplateFromJson(Map<String, dynamic> json) {
  return Template(
    id: json['id'] as String,
    name: json['name'] as String,
  )..components = (json['data'] as List)
      ?.map((e) =>
          e == null ? null : Component.fromJson(e as Map<String, dynamic>))
      ?.toList();
}

Map<String, dynamic> _$TemplateToJson(Template instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'data': instance.components,
    };
