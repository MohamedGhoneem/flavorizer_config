class FlavorVariablesModel {
  String? title;
  String? description;
  String? baseUrl;

  FlavorVariablesModel({
    this.title,
    this.description,
    this.baseUrl,
  });

  FlavorVariablesModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    baseUrl = json['base_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['base_url'] = baseUrl;

    return data;
  }
}
