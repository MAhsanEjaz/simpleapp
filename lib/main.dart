import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simpleapp/Datatable.dart';
import 'package:simpleapp/drwa_1.dart';
import 'package:simpleapp/profile.dart';
import 'package:simpleapp/spannn.dart';
import 'package:simpleapp/sxreen.dart';
import 'package:simpleapp/willlpop.dart';
import 'Cupert.dart';
import 'IndexBott.dart';
import 'SeedNew.dart';
import 'Seedforme.dart';
import 'Srch.dart';
import 'buildcard.dart';
import 'counter_provider.dart';
import 'package:simpleapp/navigate.dart';
import 'package:simpleapp/provider.dart';
import 'package:path_provider/path_provider.dart';
import 'package:simpleapp/stories_bar.dart';
import 'package:simpleapp/tab_1.dart';
import 'package:simpleapp/test_2.dart';
import 'package:simpleapp/test_app.dart';
import 'package:device_preview/device_preview.dart';
import 'control.dart';
import 'droo.dart';
import 'expans.dart';
import 'heroo.dart';
import 'hoom.dart';
import 'inde.dart';
import 'loginscreen.dart';
import 'multi.dart';
import 'multipl.dart';
import 'mysli.dart';
import 'new_ind.dart';

void main(){
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>
          NewApp(),
    )
  );
}

class NewApp extends StatefulWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  _NewAppState createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(


      debugShowCheckedModeBanner: false,
      // home: Demo(),
      // home: BottomNevigationBar(),
      // home: Asadv(),
      // home: drwa(),
      // home: TabScreen(),
      // home: TestApp(),
      // home: Test2(),
      // home: controll(),
      // home: navigate(),
      //  home: login(),
      // home: newscreen(),
      // home: screen(),
      // home: DropDownn(),
      // home: inddex(),
      // home:  BottomSheetTask()
      // home: nwindx(),
      // home: Profile()
      // home: myheroo(),
      // home:Task(),
      // home: mymulti(),
      // home: Dta(),
      // home: Expansss(),
      // home: willl(),
      // home: srchbar(),
      // home: Cuperr(),
      // home: BuildCard(),
      // home: Seed(),
      home: HomeNew(),
      // home: spann(),
      // home: hoom(),


    );
  }
}

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black, ), onPressed: () {  },),
        elevation: 0,
        title: Text('Simple App', style: GoogleFonts.macondo(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24)
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Simple App',style:GoogleFonts.alegreyaSansSc(textStyle: TextStyle(
                  fontStyle: FontStyle.italic, fontSize: 30, fontWeight: FontWeight.bold
              )),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Email', labelStyle: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ButtonBar(
              buttonTextTheme: ButtonTextTheme.primary,
              // buttonHeight: 10,
              children: [
                ElevatedButton(onPressed: (){}, child: Text('Cancel', style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white,
                ),),
                ),
                ElevatedButton(onPressed: (){

                },
                  child: Text('OK', style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),


                  ),


                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BottomNevigationBar extends StatefulWidget {
  const BottomNevigationBar({Key? key}) : super(key: key);

  @override
  _BottomNevigationBarState createState() => _BottomNevigationBarState();
}

class _BottomNevigationBarState extends State<BottomNevigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}


