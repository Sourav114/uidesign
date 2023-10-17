import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uidesign/Second/work_button.dart';
import 'package:uidesign/Second/work_tile.dart';
import 'package:uidesign/third_page.dart';
import 'Second/work_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Good Evening,',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),),
                  Text('Sourav',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height*.05,
                width: MediaQuery.of(context).size.width*.1,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blueGrey,
                      width: 2.0,
                    ),),
                child: const Icon(Icons.notifications_none_outlined),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //Card
                Container(
                  height: MediaQuery.of(context).size.height*.25,
                  child: PageView(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      MyCard(balance: 42000.00,cardNum: 4069,),
                      MyCard(balance: 105000.00,cardNum: 9070,),
                      MyCard(balance: 42067.00,cardNum: 4089,),
                      MyCard(balance: 13400.00,cardNum: 5007,),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: const WormEffect(dotColor: Colors.blueGrey,activeDotColor: Colors.black87),),
                //buttons
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: const BoxDecoration(shape: BoxShape.rectangle),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ThirdPage()));
                          },
                          child: const MyButton(txt: 'Send', imgPath: 'lib/assets/images/btn2.png',),
                      ),
                      const  MyButton(txt: 'Receive', imgPath: 'lib/assets/images/btn1.png',),
                      const MyButton(txt: 'Lock Card', imgPath: 'lib/assets/images/btn3.png',),
                      const MyButton(txt: 'Setting', imgPath: 'lib/assets/images/btn4.png',)
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Recent Transactions',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),),
                      Text('See All',
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                const MyTile(txt1: 'Spotify', txt2: '12/10', txt3: 99, txt0: 'lib/assets/images/spotify.png'),
                const SizedBox(height: 10.0,),
                const MyTile(txt1: 'Netflix', txt2: '18/03', txt3: 99, txt0: 'lib/assets/images/netflix.png'),
                const SizedBox(height: 10.0,),
                const MyTile(txt1: 'Disney+Hotstar', txt2: '31/01', txt3: 99, txt0: 'lib/assets/images/paris.png'),
                const SizedBox(height: 10.0,),
                const MyTile(txt1: 'Transaction', txt2: '30/01', txt3: 99, txt0: 'lib/assets/images/transaction.png'),
                const SizedBox(height: 10.0,),
                const MyTile(txt1: 'Self Love', txt2: '01/01', txt3: 999, txt0: 'lib/assets/images/love.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
