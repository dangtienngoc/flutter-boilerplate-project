import 'dart:convert';

import 'package:boilerplate/models/template/template_list.dart';
import 'package:flutter_test/flutter_test.dart';

import './data.dart';

void main() {
  // instantiate json decoder for json serialization
  final JsonDecoder _decoder = JsonDecoder();

  String data = Setting().data;

  Map<String, dynamic> data_map = json.decode(data);

  TemplateList templates = TemplateList.fromJson(data_map['templates']);

//  print(json.encode(templates));

  templates.templates.forEach((template) {
//    print(template.toJson());
//    print(template.components.length);
    template.components.forEach((component) {
      print(component.toJson());
    });
  });

  group('Template', () {
    test('Default value', () {});
  });
}
