import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildCard extends StatefulWidget {
  const BuildCard({Key? key}) : super(key: key);

  @override
  _BuildCardState createState() => _BuildCardState();
}

class _BuildCardState extends State<BuildCard> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _BackPress,
      child: Scaffold(
        appBar:
        AppBar(title: Text('Cards'),
        ),
        body: NewCard(),
      ),
    );
  }

  Future<bool> _BackPress() async {
    return await showCupertinoDialog(context: context, builder: (context)=>CupertinoAlertDialog(
      content: Column(
        children: [
          Text('Do You Want Close Your Application'),
        ],
      ),
      actions: [
        TextButton(onPressed: (){Navigator.of(context).pop(true);}, child: Text('Yes')),
        TextButton(onPressed: (){Navigator.of(context).pop(false);}, child: Text('No')),
      ],
    )
    );
  }
}
class NewCard extends StatefulWidget {
  const NewCard({Key? key}) : super(key: key);

  @override
  _NewCardState createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            CommonCard(color: Colors.orangeAccent,child: Center(child:
            TextButton(child: Text('Orange'), onPressed: () {  },)),),
            CommonCard(color: Colors.red,child: Center(child: Text('Red',style: GoogleFonts.nobile(fontWeight: FontWeight.bold))),),
            CommonCard(color: Colors.yellow,child: Center(child: Text('Yellow',style: GoogleFonts.nobile(fontWeight: FontWeight.bold))),),
            CommonCard(color: Colors.pink,child: Center(child: Text('Pink',style: GoogleFonts.nobile(fontWeight: FontWeight.bold))),),
            CommonCard(color: Colors.yellowAccent,child: Center(child: Text('Yellow Accent',style: GoogleFonts.nobile(fontWeight: FontWeight.bold))),),
          ],
        ),
      ),
    );
  }
}

class CommonCard extends StatefulWidget {

  final color;
  final child;
  const CommonCard({Key? key, required this.color, this.child}) : super(key: key);
  @override
  _CommonCardState createState() => _CommonCardState();
}
class _CommonCardState extends State<CommonCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 200,
        height: 200,
        child: Card(
          child: widget.child,
          color: widget.color,
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
        ),
      ),
    );
  }
}


