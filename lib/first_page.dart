import 'package:flutter/material.dart';
import 'package:uidesign/bottom.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Center(
                child: Image.asset('lib/assets/images/pic1.gif',
                  //height: MediaQuery.of(context).size.height*.3,
                  width: MediaQuery.of(context).size.width*1,
                  //width:400,
                  ),),
              SizedBox(height: MediaQuery.of(context).size.height*.05,),
              Center(
                child: Column(
                  children: [
                    Text('Bank on-the-go with our app',
                      style: TextStyle(
                        height: MediaQuery.of(context).size.height*.0009,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,),
                      textAlign: TextAlign.center,),
                    const Text(
                      'Manage your finances anytime anywhere with our online banking app',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17),
                      textAlign: TextAlign.center,),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.15,),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Colors.blue),
                          minimumSize: MaterialStatePropertyAll(Size(370, 50)),
                        ),
                        onPressed: () {
                          debugPrint('pressed');
                        },
                        child: const Text('Create an account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),)),
                    SizedBox(height: MediaQuery.of(context).size.height*.02,),
                    ElevatedButton(
                        style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(300, 50)),),
                        onPressed: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyBottomNavigationBar(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('lib/assets/images/google.png',
                              width: 30,
                              height: 30,),
                            SizedBox(width: MediaQuery.of(context).size.width*.04,),
                            const Text('Sign up with Google',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20,
                              ),
                            )
                          ],
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Already a member?',
                  style: TextStyle(fontSize: 15),),
                  TextButton(
                    onPressed: (){null;},
                    child: const Text('Sign In',
                      style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
