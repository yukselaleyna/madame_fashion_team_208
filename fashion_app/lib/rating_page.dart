
import 'package:fashion_app/constant.dart';
import 'package:fashion_app/widget/sidebar_widget.dart';
import 'package:fashion_app/constant.dart';
import 'package:fashion_app/widget/sidebar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double? _ratingValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Madame',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Herr Von Muellerhoff',
                      fontSize: 40.0,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 2,
                ),
                Image.asset(
                  'assets/logo/logo.png',
                  fit: BoxFit.contain,
                  height: 70,
                ),
                const SizedBox(
                  width: 2,
                ),
                const Text(
                  'Fashion',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Herr Von Muellerhoff',
                      fontSize: 40.0,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          toolbarHeight: 120,
          backgroundColor: Color(0xFFFFF1F1),
          shadowColor: Color.fromARGB(255, 0, 0, 0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Color(0xFFFF7171),
                size: 25,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              highlightColor: Color.fromARGB(255, 194, 24, 80),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          }),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.saved_search_outlined),
                iconSize: 25,
                highlightColor: Color.fromARGB(255, 194, 24, 80),
                color: Color.fromARGB(255, 255, 113, 113),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_basket_sharp),
                iconSize: 25,
                highlightColor: Color.fromARGB(255, 194, 24, 80),
                color: Color(0xFFFF7171),
              ),
            ),
          ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(
            children: [
              const Text(
                'RATE US!',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 25),
              RatingBar(
                  initialRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  ratingWidget: RatingWidget(
                      full: const Icon(Icons.star, color: Colors.orange),
                      half: const Icon(
                        Icons.star_half,
                        color: Colors.orange,
                      ),
                      empty: const Icon(
                        Icons.star_outline,
                        color: Colors.orange,
                      )),
                  onRatingUpdate: (value) {
                    setState(() {
                      _ratingValue = value;
                    });
                  }),
              const SizedBox(height: 25),
              Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                    color: kBackgroundColor, shape: BoxShape.circle),
                alignment: Alignment.center,
                child: Text(
                  _ratingValue != null ? _ratingValue.toString() : 'Rate us!',
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: SidebarWidget(),
    );
  }
}