import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.balance, required this.cardNum});

  final double balance;
  final int cardNum;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.blueGrey
        ),
        child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text('Your Balance :',style: TextStyle(color: Colors.white70,fontSize: 20),),
                    Text('\$$balance',style: const TextStyle(color: Colors.white70,fontSize: 40),),
                    SizedBox(height: MediaQuery.of(context).size.height*.067,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text('VISA',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                              fontSize: 30,
                              fontStyle: FontStyle.italic),),
                        Text('**** **** **** $cardNum',
                          style: const TextStyle(
                              color: Colors.white70,fontSize: 18
                          ),),
                      ],
                    )
                  ],
                ),
              ),
            ]
        ),
      );
  }
}
