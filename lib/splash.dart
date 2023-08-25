import 'dart:async';
import 'package:juniors_deals/welcome.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  @override
  void initState() {
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Welcome()
      ));
    }
    );

  }
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("assets/img.png",)],
        ),
      ),




    );

  }
}
