import 'package:fashion_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/models/product.dart';

class FiveWidget extends StatelessWidget {
  const FiveWidget({Key? key}) : super(key: key);

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
                        color: products[1].color),
                    child: Image.asset(
                      products[1].image,
                      fit: BoxFit.cover,
                    ),                  
                  ),                  
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 4),
                    child: Text(
                      products[1].title,
                      style: TextStyle(color: kTextLightColor),
                    )
                    ),
                Text(
                  '\ It is out of stock',                  
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
                )
              ],
            );
  }
}
