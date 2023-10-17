import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.txt, required this.imgPath});

  final String imgPath;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          height: MediaQuery.of(context).size.height*.08,
          width: MediaQuery.of(context).size.width*.16,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                  color: Colors.blueGrey,
                  width: 2.0,
              )),
          child: Image.asset(imgPath,height: 25,width: 25,),
        ),
        const SizedBox(height: 10),
        Text(txt.toString(),
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold),),
      ],
    );
  }
}
