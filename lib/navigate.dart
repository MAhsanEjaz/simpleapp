import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'next.dart';

class navigate extends StatefulWidget {
  const navigate({Key? key}) : super(key: key);

  @override
  _navigateState createState() => _navigateState();
}

class _navigateState extends State<navigate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Navigator', style: GoogleFonts.kufam(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 58.0),
              child: SizedBox(
                width: 200,
                height: 44,
                child: ElevatedButton(onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondRoute()));
                }, child: Text(
                  'Next Screen', style: GoogleFonts.antic(fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
