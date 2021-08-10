import 'package:flutter/material.dart';
import 'package:simpleapp/new_ind.dart';

class nwindx extends StatefulWidget {
  const nwindx({Key? key}) : super(key: key);

  @override
  _nwindxState createState() => _nwindxState();
}

class _nwindxState extends State<nwindx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Builder(
        builder: (context)=>Align(
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: (){
              showBottomSheet(context: context, builder: (context)=>SingleChildScrollView(
                child: Card(
                  margin: EdgeInsets.only(
                    left: 12, top: 12, right: 12,bottom: 12
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.black),
                  ),
                  color: Colors.red,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: IndexWidgetArea(),

                ),
              ));
            },child: Text('Tap'),
          ),
        ),
      ),
    );
  }
}

class IndexWidgetArea extends StatefulWidget {
  const IndexWidgetArea({Key? key}) : super(key: key);

  @override
  _IndexWidgetAreaState createState() => _IndexWidgetAreaState();
}

class _IndexWidgetAreaState extends State<IndexWidgetArea> {
  int i = 0;
  @override
  Widget build(BuildContext context) {

    return IndexedStack(
        index: i = 0,
      children: [
        Container(
          height: 180,

        )
      ],
    );
  }
}

