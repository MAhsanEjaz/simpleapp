import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {





  @override
  Widget build(BuildContext context) {
    return   Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(icon:Icon(Icons.notifications_active,color: Colors.black,),onPressed: (){

                },tooltip: 'Notifications',)
              ],
              leading: IconButton(
                tooltip: 'Back',
                onPressed: (){},icon:Icon(FontAwesomeIcons.backspace,color: Colors.black,),
              ),
              backgroundColor: Colors.white,
              title: Text('Profile', style: GoogleFonts.gabriela(fontSize: 25, color: Colors.black,fontWeight: FontWeight.w900),),
              centerTitle: true,
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ButtonBar(
                      children: [
                        TextButton.icon(onPressed: (){
                          _showDialog(context);
                        }, icon: Icon(Icons.account_circle), label: Text('Logout'))
                    ]
                    ),
                    CircleAvatar(radius:
                    50,
                      backgroundColor: Colors.black12,
                      child: Icon(Icons.person,size: 40,color: Colors.green,),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 14.0),
                      child: Container(
                        child: Text('Shehbaz Khan',style: GoogleFonts.arvo(fontSize: 20,fontWeight: FontWeight.w500),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11.0),
                      child: Container(
                        child: Text('ShehbazKhan99@Gmail.com',style: GoogleFonts.arvo(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey),),
                      ),
                    ),

                    Wrap(

                      direction: Axis.horizontal,

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Row(
                            children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 48.0),
                          child: IconButton(icon: Icon(Icons.message,size: 33,color: Colors.green,),onPressed: (){},tooltip: 'Messaging',),
                      ),
                              Padding(
                                padding: const EdgeInsets.only(left: 22.0,top: 10),
                                child: Container(
                                  height: 30,
                                  width: 2,
                                  color: Colors.grey,
                                ),
                              ),


                              Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: IconButton(icon: Icon(Icons.notifications_active,size: 33,color: Colors.green,),onPressed: (){},tooltip: 'Messaging',),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0,top: 10),
                                child: Container(
                                  height: 30,
                                  width: 2,
                                  color: Colors.grey,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 33.0),
                                child: Icon(Icons.camera,size: 33,color: Colors.green,),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 44.0),
                              child: Text('Messaging',style: GoogleFonts.arvo(fontSize: 12,fontWeight: FontWeight.w200,color: Colors.grey),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 57.0),
                              child: Text('Notifications',style: GoogleFonts.arvo(fontSize: 12,fontWeight: FontWeight.w200,color: Colors.grey),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 67.0),
                              child: Text('Data',style: GoogleFonts.arvo(fontSize: 12,fontWeight: FontWeight.w200,color: Colors.grey),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey,

                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: ListTile(
                                  leading: Icon(FontAwesomeIcons.facebook,color: Colors.blue,),
                                  title: Text('Login in Facebook',style: GoogleFonts.autourOne(fontSize: 16),),
                                  trailing: Icon(CupertinoIcons.chevron_forward),
                                  onTap: (){
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 0.0),
                              child: Divider(
                                thickness: 1,
                                color: Colors.grey,

                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0.0),
                                child: ListTile(
                                  leading: Icon(FontAwesomeIcons.youtube,color: Colors.red,),
                                  title: Text('Login in Youtube',style: GoogleFonts.autourOne(fontSize: 16),),
                                  trailing: Icon(CupertinoIcons.chevron_forward),
                                  onTap: (){},
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0.0),
                              child: Divider(
                                thickness: 1,
                                color: Colors.grey,

                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0.0),
                                child: ListTile(
                                  leading: Icon(FontAwesomeIcons.googlePlay,color: Colors.blue,),
                                  title: Text('Login in GooglePlay',style: GoogleFonts.autourOne(fontSize: 16),),
                                  trailing: Icon(CupertinoIcons.chevron_forward),
                                  onTap: (){},
                                ),
                              ),
                            ),


                          ],
                        )
                      ],

                    ),

                  ],
                ),
              ),
            ),
    );
  }


}

void _showDialog(BuildContext context) {
  showCupertinoDialog(context: context, builder: (context)=>CupertinoAlertDialog(
    content: Column(
      children: [
        Text('Login Your Application',style: GoogleFonts.gabriela(fontSize: 14,fontWeight: FontWeight.w500),),
        ButtonBar(
          children: [
            TextButton.icon(onPressed: (){Navigator.pop(context);
            }, icon: Icon(Icons.close), label: Text('Close',style: TextStyle(color: Colors.red),))
          ],
        )
      ],
    ),

  ));
}

