import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:simpleapp/counter_provider.dart';


class newscreen extends StatefulWidget {
  const newscreen({Key? key}) : super(key: key);

  @override
  _newscreenState createState() => _newscreenState();
}

class _newscreenState extends State<newscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Provider${context.watch<Counter>().count}', style: GoogleFonts.kufam(fontSize: 20),),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Center(child: Padding(
                padding: const EdgeInsets.only(top: 258.0),
                child: Text('You have pushed the button this may times: ${context.watch<Counter>().count}', style: GoogleFonts.acme(fontSize: 18, fontWeight: FontWeight.bold),),


              ),

              ),
              count(),

            ],
          ),
        ),
        floatingActionButton:
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(onPressed: ()=> context.read<Counter>().decrement(),
              key: Key('Decrement Floating Action Button'),
              tooltip: 'Decrement',
            child: Icon(Icons.remove),
            ),
            SizedBox(
              width: 70,
              child: FloatingActionButton(
                onPressed: ()=> context.read<Counter>().reset(),
                key: Key('rest_floating Action button'),
                tooltip: ('Rest Button'),
                child: Icon(Icons.exposure_zero),
              ),
            ),
            SizedBox(
              width: 70,
              child: FloatingActionButton(
                onPressed: ()=> context.read<Counter>().increment(),
                key: Key('increment_Floating Action Button'),
                tooltip: ('Increment'),
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class count extends StatelessWidget {
  count({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Text('${context.watch<Counter>().count}',
    key: Key('counterState'), style: Theme.of(context).textTheme.headline2,);
  }

}
