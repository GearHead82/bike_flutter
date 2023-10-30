import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  //SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<Color> backgroundColors = List.filled(5, Colors.white70);
  List<Color> textcolor = List.filled(5, Colors.black);

  int indec = 0;
  //Color white = Colors.pink;
  final List<String> cat = [
    'Sports',
    'Adventure',
    'Crusier',
    'Touring',
    'Scooty',
    
  ];

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double textsize = screenWidth * 0.04;
    return SizedBox(
      height: MediaQuery.of(context).size.width*0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cat.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    backgroundColors[indec] = Color(0xFFFFFFFF);
                    textcolor[indec] = Colors.black;
                    textcolor[index] = textcolor[index] == Color(0xFFFFFFFF)
                        ? Colors.black
                        : Color(0xFFFFFFFF);
                    backgroundColors[index] =
                        backgroundColors[index] == Colors.black
                            ? Color(0xFFFFFFFF)
                            : Colors.black;
                    indec = index;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.35,
                  decoration: BoxDecoration(
                      color: backgroundColors[index],
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    cat[index],
                    style: TextStyle(color: textcolor[index],fontSize: textsize),
                  )),
                ),
              ),
            );
          }),
    );
  }
}

class Products extends StatelessWidget {
 
 final  String first;
 final String second;
  const Products({required this.first,required this.second});

  @override
  Widget build(BuildContext context) {
     double screenWidth=MediaQuery.of(context).size.width;
     double textsize=screenWidth*0.05;
    
    return  Row(
      children: [
        Padding(
          padding: EdgeInsets.all(5.0),
          child: Text(
            first,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize:textsize),
          ),
        ),
        Text(
          second,style: TextStyle(fontSize: textsize),
        )
      ],
    );
  }
}
class Elementss extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return const  Padding(
          padding: EdgeInsets.only(left: 25, right: 25),
          child: TextField(
            decoration: InputDecoration(
              
              fillColor:Color(0xFFFFFFFF) ,
              contentPadding: EdgeInsets.symmetric(vertical: 15),
                filled: true,
                //fillColor: Colors.grey,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                prefixIcon: Icon(
                  Icons.search,
                  size: 30,
                  weight: 80,
                ),
                prefixIconColor: Colors.grey,
                hintText: 'search bike',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  wordSpacing: 2,
                )),
          ),
        );
  }
}

class BikeCard extends StatelessWidget {
  BikeCard({super.key});
  final List<String> bikes = [
    'assets/haya.jpg',
    'assets/hayared.webp',
    'assets/haya white.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.285,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: bikes.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Color(0xFFFFFFFF),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.175,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(bikes[index])),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      child: Text(
                        'Royal Enfield',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      child: Text(
                        '699 /day',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class Tile extends StatelessWidget {
  Tile({super.key});
  final List<String> bikes = [
    'assets/haya.jpg',
    'assets/hayared.webp',
    'assets/haya white.jpg'
  ];

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double textsize = screenWidth * 0.037;
    return ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: bikes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Card(
              color: Color(0xFFFFFFFF),
              child: ListTile(
                title:  Text('Hayaboosa',
                    style: TextStyle(
                        fontSize:textsize ,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                subtitle:  Text(
                  '699 /day',
                  style: TextStyle(fontSize:textsize , color: Colors.black87),
                ),
                trailing: Container(
                    color: Colors.black,
                    child:  Text(
                      'Available',
                      style: TextStyle(fontSize:textsize , color:Color(0xFFFFFFFF)),
                    )),
                leading: CircleAvatar(
                  radius: 30,
                  child: ClipOval(
                      child: Image.asset(
                    bikes[index],
                    fit: BoxFit.fill,
                    height: 45,
                    width: 45,
                  )),
                ),
              ),
            ),
          );
        });
  }
}

class Paddingg extends StatelessWidget {
  final Widget someWidget;
  Paddingg({required this.someWidget});

  @override
  Widget build(BuildContext context) {
    return Padding(
        child: someWidget,
        padding: EdgeInsets.symmetric(horizontal: 20));
  }
}

class Paddingg2 extends StatelessWidget {
  final Widget someWidget;
  Paddingg2({required this.someWidget});

  @override
  Widget build(BuildContext context) {
    return Padding(child: someWidget, padding: EdgeInsets.only(left: 6));
  }
}

class Paddingg3 extends StatelessWidget {
  final Widget someWidget;
  final double space;
  Paddingg3({required this.someWidget, required this.space});

  @override
  Widget build(BuildContext context) {
    return Padding(child: someWidget, padding: EdgeInsets.only(left: space));
  }
}

class Dividerr {
  Widget divides() {
    return const Divider(color: Colors.grey, thickness: 1);
  }
}

class Decorationn extends StatelessWidget {
  final String text1;
  final String text2;
  Decorationn({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double textsize = screenWidth * 0.043;
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 17),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.33,
        height: MediaQuery.of(context).size.height * 0.09,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black45),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: Text(text1,
                  style: TextStyle(
                    fontSize:textsize ,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: Text(
                text2,
                style: TextStyle(fontSize:textsize , fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BikeImage extends StatelessWidget {
  final String imagedata;
  BikeImage({required this.imagedata});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.33,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagedata,
              fit: BoxFit.fill,
            )));
  }
}
