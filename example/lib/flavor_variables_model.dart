class FlavorVariablesModel {
  String? title;
  String? description;
  String? appId;
  String? iconPath;
  String? baseUrl;


  FlavorVariablesModel(
      {this.title,
        this.description,
        this.appId,
        this.iconPath,
        this.baseUrl,
      });

  FlavorVariablesModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    appId = json['app_id'];
    iconPath = json['icon_path'];
    baseUrl = json['base_url'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['app_id'] = appId;
    data['icon_path'] = iconPath;
    data['base_url'] = baseUrl;

    return data;
  }
}
