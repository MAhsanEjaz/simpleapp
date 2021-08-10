import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class willl extends StatefulWidget {
  const willl({Key? key}) : super(key: key);

  @override
  _willlState createState() => _willlState();
}

class _willlState extends State<willl> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _backpress,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pop Screen'),
          centerTitle: true,
        ),
      ),
    );
  }


  Future<bool> _backpress() async {
    return (await showCupertinoDialog(context: context, builder: (context)=>
      CupertinoAlertDialog(
        content: Column(
          children: [
            Text('Do You Want Close Your App')
          ],
        ),
        actions: [
          TextButton(onPressed: (){Navigator.of(context).pop(true);}, child: Text('Yes')),
          TextButton(onPressed: (){Navigator.of(context).pop(false);}, child: Text('No')),
        ],
      )

    ));
  }
}

