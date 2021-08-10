import 'package:flutter/material.dart';
import 'package:simpleapp/multi.dart';

class mymulti extends StatefulWidget {
  const mymulti({Key? key}) : super(key: key);

  @override
  _mymultiState createState() => _mymultiState();
}

class _mymultiState extends State<mymulti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiple Fields'),
      ),
      body: SingleChildScrollView(
        child: (
        Column(
          children: [
            Assessmnt(),
          ],
        )
        ),
      ),
    );
  }
}

class Assessmnt extends StatefulWidget {
  const Assessmnt({Key? key}) : super(key: key);

  @override
  _AssessmntState createState() => _AssessmntState();
}

class _AssessmntState extends State<Assessmnt> {
  @override
  Widget build(BuildContext context) {
    return (
    Column(
      children: [
        // CommonTextField(txt: , controller: controller)
      ],
    )
    );
  }
}

