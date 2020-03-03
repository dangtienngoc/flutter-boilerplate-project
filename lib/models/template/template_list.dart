import 'package:boilerplate/models/template/template.dart';

class TemplateList {
  final List<Template> templates;

  TemplateList({
    this.templates,
  });

  factory TemplateList.fromJson(List<dynamic> json) {
    List<Template> templates = List<Template>();
    templates = json.map((template) => Template.fromJson(template)).toList();

    return TemplateList(
      templates: templates,
    );
  }
}
