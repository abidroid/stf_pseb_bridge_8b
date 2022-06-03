import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int randomNum = 0;
  String result = 'Even';
  Color txtColor = Colors.green;

  var random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Numbers'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$randomNum', style: const TextStyle(fontSize: 30),),
            const Text('is', style: TextStyle(fontSize: 30),),
            Text(result, style:  TextStyle(fontSize: 30, color: txtColor),),
            ElevatedButton(onPressed: (){

              setState((){
                randomNum = random.nextInt(100) + 1;
                if( randomNum % 2 == 0){
                  result = 'Even';
                  txtColor = Colors.green;
                }else{
                  result = 'Odd';
                  txtColor = Colors.red;
                }
              });


            }, child: const Text('Generate and Check'))
          ],
        ),
      ),
    );
  }
}
