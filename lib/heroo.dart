import 'package:flutter/material.dart';

class myheroo extends StatefulWidget {
  const myheroo({Key? key}) : super(key: key);

  @override
  _myherooState createState() => _myherooState();
}

class _myherooState extends State<myheroo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: CircleAvatar(
                radius: 50,
                child: Hero(
                  child: GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>hro()));}, child: FlutterLogo(size: 60,),
                  ),
                  tag: 'Flutter',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class hro extends StatefulWidget {
  const hro({Key? key}) : super(key: key);

  @override
  _hroState createState() => _hroState();
}

class _hroState extends State<hro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font'),
      ),
      body: SafeArea(
        child: Center(
          child: Hero(
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },child: FlutterLogo(size: 240,),
            ),
            tag: 'Flutter',
          ),
        ),
      ),
    );
  }
}

