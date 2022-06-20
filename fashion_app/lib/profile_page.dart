import 'package:fashion_app/widget/sidebar_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
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
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Container(
                width: double.infinity,
                height: 200,
                child: Container(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('assets/logo/avatar.png'),
                    radius: 60.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Account Name",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blueGrey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                elevation: 2.0,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                    child: Text(
                      "Puchases",
                      style: TextStyle(
                          letterSpacing: 2.0, fontWeight: FontWeight.w300),
                    ))),
            SizedBox(
              height: 15,
            ),
            Text(
              "Fashion Lover",
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromARGB(255, 255, 206, 222),
                            Colors.redAccent
                          ]),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 100.0,
                        maxHeight: 40.0,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Contact me",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromARGB(255, 255, 206, 222),
                            Colors.redAccent
                          ]),
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 100.0,
                        maxHeight: 40.0,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Favorite Items",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      drawer: SidebarWidget(),
    );
  }
}
