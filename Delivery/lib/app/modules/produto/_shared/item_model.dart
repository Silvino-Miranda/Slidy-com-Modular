import 'dart:convert';

class Item {
  String descricao;
  String url;
  String tag;
  String preco;
  bool favorito;

  Item({this.descricao, this.url, this.tag, this.preco, this.favorito});

  Item.fromJson(Map<String, dynamic> jsonDados) {
    descricao = jsonDados['descricao'];
    url = jsonDados['url'];
    tag = jsonDados['tag'];
    preco = jsonDados['preco'];
    favorito = jsonDados['favorito'];
  }

  Map<String, dynamic> get toJson {
    Map<String, dynamic> jsonDados = new Map<String, dynamic>();

    jsonDados['descricao'] = this.descricao;
    jsonDados['url'] = this.url;
    jsonDados['tag'] = this.tag;
    jsonDados['preco'] = this.preco;
    jsonDados['favorito'] = this.favorito;

    return jsonDados;
  }

  String objetoEncodeJson(Item objeto) {
    final jsonDados = objeto.toJson;
    return json.encode(jsonDados);
  }
}
