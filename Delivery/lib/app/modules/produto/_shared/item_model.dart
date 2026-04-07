import 'dart:convert';

class Item {
  String descricao;
  String url;
  String tag;
  String preco;
  bool favorito;

  Item({
    required this.descricao,
    required this.url,
    required this.tag,
    required this.preco,
    required this.favorito,
  });

  Item.fromJson(Map<String, dynamic> jsonDados)
      : descricao = jsonDados['descricao'] as String,
        url = jsonDados['url'] as String,
        tag = jsonDados['tag'] as String,
        preco = jsonDados['preco'] as String,
        favorito = jsonDados['favorito'] as bool;

  Map<String, dynamic> get toJson {
    Map<String, dynamic> jsonDados = <String, dynamic>{};

    jsonDados['descricao'] = descricao;
    jsonDados['url'] = url;
    jsonDados['tag'] = tag;
    jsonDados['preco'] = preco;
    jsonDados['favorito'] = favorito;

    return jsonDados;
  }

  String objetoEncodeJson(Item objeto) {
    final jsonDados = objeto.toJson;
    return json.encode(jsonDados);
  }
}
