import 'package:flutter/material.dart';
import 'package:myapp/Tabs/burger_tab.dart';
import 'package:myapp/Tabs/cake_tab.dart';
import 'package:myapp/Tabs/donut_tab.dart';
import 'package:myapp/Tabs/pizza_tab.dart';
import 'package:myapp/Tabs/smoothie_tab.dart';
import 'package:myapp/Utils/my_tab.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  Home({super.key});

//List
  final List<Widget> myTabs = [
//Donut
    const Mytab(
      imagePath: 'assets/Dicon.png',
    ),

//Burger
    const Mytab(
      imagePath: 'assets/Sicon.png',
    ),

//Smoothie
    const Mytab(
      imagePath: 'assets/Bicon.png',
    ),

//Pizza
    const Mytab(
      imagePath: 'assets/Picon.png',
    ),

//Cake
    const Mytab(
      imagePath: 'assets/Cicon.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // leading: IconButton(
          //  icon: Icon(Icons.menu) ,
          //   onPressed: (){
          //        Drawer();
          //   },
          //   ),

          actions: [
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            )
          ],
        ),
        drawer: const Drawer(
          backgroundColor: Colors.amber,
          child: Column(
            children: [
              DrawerHeader(child: Icon(Icons.access_alarm)),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  "H O M E",
                  style: TextStyle(fontFamily: 'Oswald'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.bakery_dining),
                title: Text(
                  "I T E M S",
                  style: TextStyle(fontFamily: 'Oswald'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text(
                  "A B O U T",
                  style: TextStyle(fontFamily: 'Oswald'),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            //I want to Eat
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text("I want to eat",
                      style: GoogleFonts.ubuntu(color: Colors.amber)),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "EAT",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Oswald'),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 24,
            ),
            //Tab Bar
            TabBar(tabs: myTabs),

            Expanded(
                child: TabBarView(children: [
              //Donut Page

              DonutTab(),

              //Smoothie Page

              SmoothieTab(),

              //Burger Page

              BurgerTab(),

              //Pizza Page

              PizzaTab(),

              //Cake Page

              CakeTab(),
            ]))
          ],
        ),
      ),
    );
  }
}
