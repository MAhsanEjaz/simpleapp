import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class drwa extends StatelessWidget {
  const drwa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Draw(),
    );
  }
}

class Draw extends StatefulWidget {
  const Draw({Key? key}) : super(key: key);

  @override
  _DrawState createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Drawer', style: TextStyle(
          fontSize: 19, fontWeight: FontWeight.bold, color: Colors.black,
        ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},child: Icon(Icons.add),

      ),
      drawer: Drawer(
        child:Column(
          children: [
            ListTile(
              leading: Icon(CupertinoIcons.mail),
              title: Text('Message', style: GoogleFonts.alegreyaSans(fontSize: 20),),

            ),
          ],
        )
        ,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
