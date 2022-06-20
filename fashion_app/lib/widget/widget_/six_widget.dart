import 'package:fashion_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/models/product.dart';

class SixWidget extends StatelessWidget {
  const SixWidget({Key? key}) : super(key: key);

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
                        color: products[4].color),
                    child: Image.asset(
                      products[4].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 4),
                    child: Text(
                      products[4].title,
                      style: TextStyle(color: kTextLightColor),
                    )),
                Text('\$ 18 ', style: TextStyle(fontWeight: FontWeight.bold),), 
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '\ 3 products in stock',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            );
  }
}
