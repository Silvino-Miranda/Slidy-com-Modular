import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_model.dart';

class DetailItem extends StatefulWidget {
  final Item produto;

  const DetailItem({Key key, this.produto}) : super(key: key);

  @override
  _DetailItemState createState() => _DetailItemState();
}

class _DetailItemState extends State<DetailItem> {
  List<String> imgList = [
    'https://images-na.ssl-images-amazon.com/images/I/610RFMr9aSL._AC_SL1000_.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/61%2BVnpkN1vL._AC_SL1000_.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/517sw4gaHiL._AC_SL1000_.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/51XWkHAmZoL._AC_SL1000_.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/51BSkD7hQqL._AC_SL1000_.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/412iLWat-EL._AC_.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhe do Produto - ' + widget.produto.tag),
        actions: [
          IconButton(
            icon: Icon(widget.produto.favorito
                ? Icons.favorite
                : Icons.favorite_border),
            color: Colors.red,
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Hero(
                tag: widget.produto.tag,
                child: Container(
                  // color: Colors.red,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 350,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: false,
                      autoPlayInterval: Duration(seconds: 5),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.bounceIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: imgList
                        .map(
                          (item) => Container(
                            child: Center(
                              child: Image.network(
                                item.toString(),
                                fit: BoxFit.cover,
                                width: 1000,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  widget.produto.descricao,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Divider(),
              Text(
                widget.produto.preco,
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
