import 'package:flutter/material.dart';

import './product_with_card.dart';
import 'package:product_list/model/product.dart';



class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> cardProduct = [];

void addToCard(Product product) {
  cardProduct.add(product);
  setState(() {
    
  });
}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Products List"),
            SizedBox(width: 250,),
            Icon(Icons.shopping_bag),
            Text(cardProduct.length.toString()),
          ],
        ),
      ),
      body: Container(
        child: GridView(
            children: [
              ProductWithCard(addToCard, 1),
              ProductWithCard(addToCard, 2),
              ProductWithCard(addToCard, 3),
               ProductWithCard(addToCard, 4),
              ProductWithCard(addToCard, 5),
              ProductWithCard(addToCard, 6),
               ProductWithCard(addToCard, 7),
              ProductWithCard(addToCard, 8),
              ProductWithCard(addToCard, 9),
            ],
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                mainAxisExtent: 300,
               // crossAxisSpacing: 22,
               // mainAxisSpacing: 22
                )),
      ),
    );
  }
}
