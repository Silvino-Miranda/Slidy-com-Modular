class CanilModel {
  int id;
  String name;
  String dateModification;
  String dateCreate;

  CanilModel({
    this.id,
    this.name,
    this.dateModification,
    this.dateCreate,
  });

  factory CanilModel.fromJson(Map<String, dynamic> json) {
    return CanilModel(
      id: json['id'],
      name: json['name'],
      dateModification: json['dateModification'],
      dateCreate: json['dateCreate'],
    );
  }

  Map<String, dynamic> get toJson {
    Map<String, dynamic> jsonDados = new Map<String, dynamic>();

    // jsonDados['id'] = this.id ?? 0;
    // jsonDados['nome'] = this.name;
    // jsonDados['dateModification'] = this.dateModification;
    // jsonDados['dateCreate'] = this.dateCreate;

    return jsonDados;
  }
}
