import 'package:fashion_app/constant.dart';
import 'package:fashion_app/models/product.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ItemCard(product: products[0]);
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  const ItemCard({
    Key? key, required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding),
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: products[0].color),
                child: Image.asset(products[0].image, fit: BoxFit.cover,),
              ),
            ),
              Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            products[0].title,
            style: TextStyle(color: kTextLightColor),)),
           Text('\$ 15 ', style: TextStyle(fontWeight: FontWeight.bold),), 
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
          '\5 products in stock',
          style: TextStyle(fontWeight: FontWeight.bold),),
            ),

          ],
        );
       }     
}

