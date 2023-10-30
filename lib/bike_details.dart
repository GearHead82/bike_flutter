import 'package:flutter/material.dart';
import 'package:bike/resource_all.dart';

class BikeDetails extends StatelessWidget {
  final Dividerr divide = Dividerr();
  final List<String> items = ['Riding Jacket', 'Riding Gloves', 'Helmet'];
  final List<String> cost = ['800 /day', '400 /day', '900/day'];
  final List<Color> item_color = [Colors.black, Colors.grey, Colors.black];
  final List<String> item_trailing = ['1', 'Add', '1'];
  final List<Color> item_text_color = [
    Color(0xFFFFFFFF),
    Colors.black,
    Color(0xFFFFFFFF)
  ];
  final List<String> item_content = [
    'assets/jacket.webp',
    'assets/gloves.jpeg',
    'assets/helmet.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double textsize = screenWidth * 0.05;
     double textsize2=screenWidth*0.07;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           SizedBox(
            height: MediaQuery.of(context).size.height*0.07,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                  iconSize: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: MediaQuery.of(context).size.width * 0.68,
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: Center(
                    child: Text(
                      'Bike Details',
                      style: TextStyle(
                          fontSize: textsize2, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Paddingg(
              someWidget: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Indian ',
                      style: TextStyle(fontSize: textsize),
                    ),
                    Text(
                      'Scout Bobber',
                      style: TextStyle(
                          fontSize: textsize, fontWeight: FontWeight.bold),
                    ),
                    Decorationn(text1: 'Category', text2: 'Crusier'),
                    Decorationn(text1: 'Displacement', text2: '1133 cc'),
                    Decorationn(text1: 'Max Speed', text2: '124 km/h')
                  ],
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: BikeImage(imagedata: 'assets/bobber.jpg'),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 14, left: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/checkout');
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            height: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Rent',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: textsize,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '1499/day',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: textsize),
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                )
              ],
            ),
          )),
          const SizedBox(
            height: 20,
          ),
          Paddingg(
              someWidget: Row(
            children: [
              Text(
                'Add',
                style:
                    TextStyle(fontSize: textsize, fontWeight: FontWeight.bold),
              ),
              Text(' items',
                  style: TextStyle(
                    fontSize: textsize,
                  ))
            ],
          )),
          SizedBox(height: 10),
          Expanded(
            child: Paddingg(
              someWidget: ListView.builder(
                  padding: EdgeInsets.all(0),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black)),
                        child: ListTile(
                          leading: CircleAvatar(
                              child: Image.asset(item_content[index])),
                          title: Text(items[index]),
                          subtitle: Text(cost[index]),
                          trailing: Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.height * 0.03,
                            color: item_color[index],
                            child: Center(
                                child: Text(
                              item_trailing[index],
                              style: TextStyle(color: item_text_color[index]),
                            )),
                          ),
                        ));
                  }),
            ),
          )
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black54,
            ),
            label: 'tab'),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.maps_ugc,
              color: Colors.black54,
            ),
            label: 'tab'),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet_giftcard,
              color: Colors.black54,
            ),
            label: 'tab'),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black54,
            ),
            label: 'tab')
      ]),
    );
  }
}
