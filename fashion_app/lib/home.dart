import 'package:fashion_app/widget/widget_/card_widget.dart';
import 'package:fashion_app/widget/widget_/five_widget.dart';
import 'package:fashion_app/widget/widget_/four_widget.dart';
import 'package:fashion_app/widget/sidebar_widget.dart';
import 'package:fashion_app/widget/widget_/seven_widget.dart';
import 'package:fashion_app/widget/widget_/six_widget.dart';
import 'package:fashion_app/widget/widget_/three_widget.dart';
import 'package:fashion_app/widget/widget_/two_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 7, vsync: this, initialIndex: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
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
          bottom: TabBar(
            controller: _tabController,
            labelColor: Color.fromARGB(255, 0, 0, 0),
            labelStyle: TextStyle(fontStyle: FontStyle.italic, fontSize: 15),
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
            isScrollable: true,
            tabs: [
              Text('1'),
              Text('2'),
              Text('3'),
              Text('4'),
              Text('5'),
              Text('6'),
              Text('7')
            ],
          ),
        ),
        drawer: SidebarWidget(),
        body: TabBarView(
          controller: _tabController,
          children: [
            CardWidget(),
            TwoWidget(),
            ThreeWidget(),
            FourWidget(),
            FiveWidget(),
            SixWidget(),
            SevenWidget()
            
          ],
        ));
    return scaffold;
  }
}
