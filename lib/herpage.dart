import 'package:flutter/material.dart';

class herpage extends StatefulWidget {
  const herpage({Key? key}) : super(key: key);

  @override
  _herpageState createState() => _herpageState();
}

class _herpageState extends State<herpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text('Hero'),
        centerTitle: true,
      ),
      body: Center(
        child: Hero(child: Image.asset(''),tag: 'Flutter',
          
        ),
      ),
    );
  }
}
