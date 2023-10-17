import 'package:flutter/material.dart';
import 'package:uidesign/fifth_page.dart';
import 'package:uidesign/fourth_page.dart';
import 'package:uidesign/pager.dart';
import 'package:uidesign/second_page.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  MyBottomNavigationBarState createState() => MyBottomNavigationBarState();
}

class MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int currentIndex = 0;
  final List<Widget> _pages = [
    const SecondPage(),
    const NextPage(),
    const FourthPage(),
    const FifthPage()
  ];
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var isSelected=true;
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (index){
          setState(() {
            currentIndex=index;
          });
          currentIndex==index?isSelected=true:isSelected=false;
        },
      ),
      bottomNavigationBar: BottomAppBar(
        height: MediaQuery.of(context).size.height*.07,
        color: Colors.blueGrey,
        notchMargin: 10.0,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home,size:30,color: currentIndex==0? Colors.blue:Colors.white),
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                  _pageController.animateToPage(currentIndex, duration: const Duration(milliseconds: 100), curve: Curves.linear);
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.compare_arrows,size:30,color: currentIndex==1? Colors.blue:Colors.white),
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                  _pageController.animateToPage(currentIndex, duration: const Duration(milliseconds: 100), curve: Curves.linear);
                });
              },
            ),
            SizedBox(width: MediaQuery.of(context).size.width*.1), // Empty space in the middle
            IconButton(
              icon: Icon(Icons.add_chart_sharp,size:30,color: currentIndex==2? Colors.blue:Colors.white),
              onPressed: () {
                setState(() {
                  currentIndex = 2;
                  _pageController.animateToPage(currentIndex, duration: const Duration(milliseconds: 100), curve: Curves.linear);
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.person,size:30,color: currentIndex==3? Colors.blue:Colors.white),
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                  _pageController.animateToPage(currentIndex, duration: const Duration(milliseconds: 100), curve: Curves.linear);
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        shape:  const  CircleBorder(),
        child: const Icon(Icons.qr_code_scanner,size: 30,color: Colors.white70),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}