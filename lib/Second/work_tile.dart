import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({super.key, required this.txt1, required this.txt2, required this.txt3, required this.txt0});

  final String txt0;
  final String txt1;
  final String txt2;
  final double txt3;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.blueGrey,width: 2.0)),
        child:Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*.5,
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*.06,
                      width: MediaQuery.of(context).size.width*.12,
                      child: Image.asset(txt0),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(txt1,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        Text(txt2,style: const TextStyle(),),
                      ],
                    ),
                  ],
                ),
              ),
              Text('\$$txt3',style: const TextStyle(fontSize: 20,color: Colors.red),),
            ],
          ),
        )
    );
  }
}
