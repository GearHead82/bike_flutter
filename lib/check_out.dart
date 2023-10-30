import 'package:flutter/material.dart';
import 'package:bike/resource_all.dart';

class Checkout extends StatelessWidget {
  final Dividerr divide = Dividerr();
  final List<String> date = ['Start Date', 'End Date'];
  final List<String> numbers = ['01-12-23', '04-12-23'];

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
     double textsize=screenWidth*0.05;
     double textsize3=screenWidth*0.042;
      double textsize2=screenWidth*0.08;
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
               onPressed:() => Navigator.pop(context),
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
                  width: MediaQuery.of(context).size.width * 0.70,
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: Center(
                    child:  Text(
                      'Check Out',
                      style:
                          TextStyle(fontSize:textsize2, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            height: 193,
            width: MediaQuery.of(context).size.width * 0.89,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              itemCount: 2,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Card(
                    child: ListTile(
                      tileColor: Color(0xFFFFFFFF),
                      contentPadding: EdgeInsets.all(4),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Icon(
                          Icons.calendar_month,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                      title: Text(
                        date[index],
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize:textsize ,
                            fontWeight: FontWeight.w900),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(numbers[index],
                          style: TextStyle(
                              fontSize:textsize ,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                          textAlign: TextAlign.center),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 45,
            width: MediaQuery.of(context).size.width * 0.89,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black45)),
            child:  Padding(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
              child: Text(
                'Apply coupon',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize:textsize ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Paddingg(
          someWidget:  Text('Details',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w700,
                  fontSize:textsize)),
        ),
        Paddingg(someWidget: divide.divides()),
        Paddingg(
          someWidget: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Paddingg2(
                      someWidget: Text(
                    'Days',
                    style: TextStyle(fontSize:textsize3),
                  )),
                 Text(
                      '4',
                      style: TextStyle(fontSize:textsize3 ),
                    
                    
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Paddingg2(
                      someWidget: Text(
                    'Rent',
                    style: TextStyle(fontSize:textsize3 ),
                  )),
             Text(
                      '5966',
                      style: TextStyle(fontSize:textsize3 ),
                    
                    
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Paddingg2(
                      someWidget: Text(
                    'Additional items',
                    style: TextStyle(fontSize:textsize3 ),
                  )),
               Text(
                        '6400',
                        style: TextStyle(fontSize:textsize3 ),
                      
                      )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Paddingg2(
                      someWidget: Text('Coupon Discount',
                          style: TextStyle(fontSize:textsize3))),
                  
                    Text(
                      '396',
                      style: TextStyle(fontSize:textsize3 ),
                    
                  
                  )
                ],
              )
            ],
          ),
        ),
        Paddingg(someWidget: divide.divides()),
        SizedBox(height: 10,),
        Paddingg(
            someWidget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Paddingg2(
                someWidget: Text('Total Amount',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize:textsize ))),
             Text('12000',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize:textsize )),
                
          ],
        )),
        SizedBox(
          height: 60,
        ),
        Paddingg(
            someWidget: Container(
          height: 65,
          width: MediaQuery.of(context).size.width * 0.89,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              'PAY',
              style: TextStyle(
                  fontSize:textsize ,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFFFFFFFF)),
            ),
          ),
        ))
      ],
    ));
  }
}
