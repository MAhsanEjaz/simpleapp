import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();

}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,

            title: Text('TabBar Controller', style: GoogleFonts.antic(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 26),
            ),
            bottom: TabBar(tabs: [
              Icon(Icons.mail),
              Icon(Icons.home),
              Icon(Icons.settings),
            ],
            ),
          ),
          body: TabBarView(children: [
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 28.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Email', labelStyle: GoogleFonts.dancingScript(fontSize: 19),border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17)
                          ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: TextField(
                          autofillHints: [AutofillHints.email],
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(

                            labelText: 'Password', labelStyle: GoogleFonts.dancingScript(fontSize: 19),border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          ),

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Confirm Password', labelStyle: GoogleFonts.dancingScript(fontSize: 19),border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)
                        ),
                        ),

                      ),
                    ),
                    ButtonBar(
                      children: [
                        SizedBox(
                          width: 100,
                          child: ElevatedButton(
                            onPressed: (){}, child: Text('Save'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Material(
                elevation: 6,
                borderRadius: BorderRadius.circular(50),
                child: ClipOval(
                  child: Container(
                    width: 160,
                    height: 130,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(' Setting Tab',style: GoogleFonts.abel(fontSize: 30),),
            ),

          ],
          ),
        ),
    );
  }
}
