import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor:Colors.blue,
        appBar:AppBar(
          title:Text('Ask Me Anything'),
          backgroundColor:Colors.blueGrey,
        ),
        body:magicBallPage(),
      ),



    );
  }
}

class magicBallPage extends StatefulWidget {
  const magicBallPage({Key? key}) : super(key: key);

  @override
  State<magicBallPage> createState() => _magicBallPageState();
}

class _magicBallPageState extends State<magicBallPage> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(children: <Widget>[
        Expanded(
        child: InkWell(
            onTap: () {
           //  Add your desired action here
           // print('Image tapped');
           setState(() {
            number = Random().nextInt(5)+1;
        });
      },
       child: Padding(
         padding: const EdgeInsets.all(16.0),
         child: Image.asset('images/ball$number.png'),
      ),
    ),
    // child: Image(
    //     width:200.0,
    //     image:AssetImage('images/dice1.png')
    //  ),
    ),
    ]),
    );
  }
}

