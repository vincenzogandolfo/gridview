import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('GridView')),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
              products.length,
              (index) => Column(
                    children: [
                      SizedBox(
                          height: 120,
                          child: Image.asset(products[index].image)),
                      ListTile(
                        title: Text(
                          products[index].name,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '€ ${products[index].price}',
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  )),
        ),
      ),
    );
  }
}

class ProductModel {
  final String image;
  final String name;
  final int price;

  const ProductModel({
    required this.image,
    required this.name,
    required this.price,
  });
}

final products = [
  const ProductModel(
    image: 'images/arkana.jpg',
    name: 'Renault Arkana',
    price: 31000,
  ),
  const ProductModel(
    image: 'images/austral.jpg',
    name: 'Renault Austral',
    price: 32000,
  ),
  const ProductModel(
    image: 'images/megane.png',
    name: 'Renault Megane-E',
    price: 43000,
  ),
  const ProductModel(
    image: 'images/captur.jpg',
    name: 'Renault Captur',
    price: 21000,
  ),
  const ProductModel(
    image: 'images/clio.jpg',
    name: 'Renault Clio',
    price: 17000,
  ),
  const ProductModel(
    image: 'images/twingo.jpg',
    name: 'Reanult Twingo-E',
    price: 24000,
  ),
  const ProductModel(
    image: 'images/zoe.jpg',
    name: 'Renault Zoe-E',
    price: 33000,
  ),
];
