import 'package:flutter/material.dart';


class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: const Text('Transfer', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25),
            ),
            centerTitle: true,
            actions: const [Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.linear_scale,color: Colors.black,),
            )],
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 65,
                  backgroundColor: Colors.blueGrey,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('lib/assets/images/boy.jpg'),
                    radius: 60.0,),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.011,),
                const Text('Sourav Rajput',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                SizedBox(height: MediaQuery.of(context).size.height*.011,),
                const Text('HSVC-2345 5432 2345 5432',style: TextStyle(fontSize: 15,color: Colors.grey),),
                SizedBox(height: MediaQuery.of(context).size.height*.021,),
                TextField(
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    hintText: 'Enter Your Amount here.',
                    prefixText: '\$',
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.023,),
                FloatingActionButton.extended(
                  onPressed: () {
                    const snackBar = SnackBar(
                      content: Text('Money Sent',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      backgroundColor: Colors.grey,
                      duration: Duration(milliseconds: 80),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  backgroundColor: Colors.blueGrey, // Background color of the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ), // Use CircleBorder for a circular shape
                  label: const Text('Send Money',style: TextStyle(fontSize: 20,color: Colors.white),),
                )],
            ),
          ),
        )
    );
  }
}
