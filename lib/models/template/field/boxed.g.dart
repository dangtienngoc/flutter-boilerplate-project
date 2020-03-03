// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boxed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Boxed _$BoxedFromJson(Map<String, dynamic> json) {
  return Boxed(
    type: json['type'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$BoxedToJson(Boxed instance) => <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
    };
