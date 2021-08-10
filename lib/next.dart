import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_outlined),
        onPressed: (){
          Navigator.pop(context);
        },),
        title: Text('Second Screen', style: GoogleFonts.kufam(fontWeight: FontWeight.w200),),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);

            }, child: Text('Back', style: GoogleFonts.macondo(fontWeight: FontWeight.w200),))
          ],
        ),
      )
    );
  }
}
