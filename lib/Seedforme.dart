
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Seed extends StatefulWidget {
  const Seed({Key? key}) : super(key: key);

  @override
  _SeedState createState() => _SeedState();
}

class _SeedState extends State<Seed> {
  var _switch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text('Seed For Me', style: GoogleFonts.arvo(fontWeight: FontWeight.w500,fontSize: 20),),
              centerTitle: true,
              floating: true,
              expandedHeight: 70,
            ),
            SliverFillRemaining(
              hasScrollBody: true,
              child: Column(
                children: [
                  Container(
                    width: 400,
                    height: 210,
                    color: Colors.black54,
                    child: Center(
                      child: Icon(FontAwesomeIcons.youtube,size: 90,),
                    )
                  ),
                  Expanded(child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CupertinoSwitch(value: (_switch),
                            onChanged: (value){
                              setState(() {
                                _switch = value;
                              });
                            }),
                      ),
                       RichText(
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text:'ALI IS IN NON-PUBLIC VIEW MODE',style:
                                TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16)),
                                TextSpan(text:'ALI IS IN NON-PUBLIC VIEW MODE',style:
                                TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16)),
                              ]
                          ),
                        ),



                    ],
                  ),
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 19),
                        child: Text('Go non-public view mode if you want to '
                            'hold subscription between mission on if making major design changes',style: TextStyle(fontWeight: FontWeight.w400 ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:12.0),
                        child: Text('Non-public is on if you requested to Team until charity approves.',style: TextStyle(

                        ),),
                      )
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Container(
                      width: 400,
                      height: 65,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 0),
                          child: Text('PLEASE ANSWER OR CONFIRM INFO TO ASK CHARITY'
                          'POINT OF HELP CONTACT FOR HELP CLICK HERE',maxLines:2, style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      color: Colors.blueAccent,
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      width: 400,
                      color: Colors.black12,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text('Who is Point of contact at your charity'),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),

    );
  }
}
