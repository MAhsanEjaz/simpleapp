import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'herpage.dart';

class screen extends StatefulWidget {
  const screen({Key? key}) : super(key: key);

  @override
  _screenState createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hero', style: GoogleFonts.theGirlNextDoor(fontWeight: FontWeight.bold, fontSize: 29,),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Hero(tag: 'flutterLogo',
                  child: GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0,top: 20),
                      child: CircleAvatar(child: FlutterLogo(size: 50,),radius: 30,backgroundColor: Colors.deepOrange),
                    ),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>herpage()));

                    },
                  ),


              ),

              Hero(tag: 'Image', child: GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 5),
                  child: CircleAvatar(
                    radius: 30,
                    child: FlutterLogo(size: 40,),
                  ),
                ),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> newImage()));},
              )
              )

            ],
          ),
        ),
      ),

    );
  }
}

class newImage extends StatefulWidget {
  const newImage({Key? key}) : super(key: key);

  @override
  _newImageState createState() => _newImageState();
}

class _newImageState extends State<newImage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back),),
          centerTitle: true,
          title: Text('New Hero', style: GoogleFonts.dancingScript(fontSize: 24),),
        ),
        body: Center(
          child: Hero(

            tag: 'hero',child: FlutterLogo(size: 200,),
          ),
        ),
      ),
    );
  }
}

