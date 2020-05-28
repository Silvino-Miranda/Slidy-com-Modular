import 'dart:convert';

class Item {
  String descricao;
  String url;
  String tag;
  String preco;

  Item(this.descricao, this.url, this.tag, this.preco);

  Item.fromJson(Map<String, dynamic> jsonDados) {
    descricao = jsonDados['descricao'];
    url = jsonDados['url'];
    tag = jsonDados['tag'];
    preco = jsonDados['preco'];
  }

  Map<String, dynamic> get toJson {
    Map<String, dynamic> jsonDados = new Map<String, dynamic>();

    jsonDados['descricao'] = this.descricao;
    jsonDados['url'] = this.url;
    jsonDados['tag'] = this.tag;
    jsonDados['preco'] = this.preco;

    return jsonDados;
  }

  String objetoEncodeJson(Item objeto) {
    final jsonDados = objeto.toJson;
    return json.encode(jsonDados);
  }
}
