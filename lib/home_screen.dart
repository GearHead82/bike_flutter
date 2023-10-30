import 'package:flutter/material.dart';
import 'package:bike/resource_all.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double textsize = screenWidth * 0.05;
    double textsize2 = screenWidth * 0.045;
    return Scaffold(
      body: Column(children: [
         SizedBox(
          height: MediaQuery.of(context).size.height*0.06,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/kile.jpeg'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: textsize2),
                ),
                Text(
                  'Kyle Jenner',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w900,
                      fontSize: textsize),
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Elementss(),
        const SizedBox(
          height: 16,
        ),
        SecondScreen(),
        const SizedBox(height: 16),
        const Products(
          first: 'Products',
          second: 'items',
        ),
        const SizedBox(
          height: 1,
        ),
        GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/details'),
            child: BikeCard()),
        SizedBox(
          height: 11,
        ),
        Products(first: 'Recently', second: 'viewed'),
        SizedBox(height: 1),
        Expanded(child: Tile()),
        SizedBox(
          height: 16,
        ),
      ]),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black54,
            ),
            label: ''),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.maps_ugc,
              color: Colors.black54,
            ),
            label: ''),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet_giftcard,
              color: Colors.black54,
            ),
            label: ''),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black54,
            ),
            label: '')
      ]),
    );
  }
}
