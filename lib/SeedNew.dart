import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeNew extends StatefulWidget {
  const HomeNew({Key? key}) : super(key: key);

  @override
  _HomeNewState createState() => _HomeNewState();
}

class _HomeNewState extends State<HomeNew> {

  var _switch = false;
  String selectedOption = '';
  String Drop2 ='';
  String Drop3 ='';
  String Drop4 ='';
  String Drop5 ='';
  String Drop6 = '';

  var _visible = true;
  var _othervisi = true;

  String radioButtonItem = 'ONE';
  int id = 1;

  String radioButtonTwo = 'Two';
 int myid = 2;

  String radioButtnThree = 'Three';
  int myidd = 3;

  String radioButtnfour = 'Three';
  int myiddd = 4;
  String radiofive = 'five';
  int idddd = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(itemBuilder: (context)=>[
            PopupMenuItem(child: Column(
              children: [
                ListTile(
                  title: Text('Setting'),
                  leading: Icon(CupertinoIcons.settings_solid),
                ),
                ListTile(
                  title: Text('Help'),
                  leading: Icon(CupertinoIcons.helm),
                  onTap: (){
                    showBottomSheet(context: context, builder: (context){
                      return Card(

                        elevation: 30,
                        child: SizedBox(
                          height: 200,
                          width: 320,
                        ),
                      );
                    });
                  },

                )

              ],
            ))
          ])
        ],
        title: Text(
          ''
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
          width: 400,
          height: 210,
              color: Color(0xFF616161),
              child: Center(
              child: Container(
              width: 70,
              height: 50,
              color: Color(0xFF444444),
              child: Icon(Icons.play_arrow,color: Colors.white,size: 50,),
              )
          )
          ),
            Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: CupertinoSwitch (value: (_switch),
                        activeColor: Color(0xFF3fc6ee),

                        onChanged: (value) {
                          setState(() {
                            _switch = value;
                          });
                        }),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(
                        left: .0, right: 7, top: 8),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: RichText(
                        text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text:'ALI IS IN NON-PUBLIC VIEW MODE',
                                  style: TextStyle(color: Color(0xFF414141),
                                      fontSize: 14,
                                      wordSpacing: 2,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: ' COMPLETE INFO BELOW THEN IT GOES ON (PUBLIC)',
                                  style: TextStyle(color: Colors.red,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700)),
                            ]
                        ),
                      ),
                    ),
                  ),

                  ),


                ]
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 8),
              child: Text(
                'Go non-public view mode if you want to hold subscription between missions or if making major design changes  ',
                style: TextStyle(fontWeight: FontWeight.w500),),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 8),
              child: Text(
                'Non-public is on if you requested to Team until charity approves.',
                style: TextStyle(fontWeight: FontWeight.w500),),
            ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Container(
                      width: 470,
                      height: 77,
                      color: Color(0xFF387dc2),
                      child: Row(
                        children: [
                          Expanded(child: Padding(
                            padding: const EdgeInsets.only(left: 18.0,right: 20),
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  // _visible = !_visible;

                                });
                              },
                              child: Center(

                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(text: "PLEASE ANSWER OR CONFIRM INFO TO ASK CHARITY",style: GoogleFonts.nobile(fontWeight: FontWeight.bold,fontSize: 13),),
                                          TextSpan(text: " POINT OF CONTACT OF HELP",style: GoogleFonts.nobile(fontWeight: FontWeight.bold,fontSize: 13),),
                                          new TextSpan(
                                            text: ' Click Here', style: GoogleFonts.nobile(fontSize: 15,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),recognizer: new TapGestureRecognizer()..onTap= (){
                                              setState(() {

                                                _visible = !_visible;
                                              });
                                          }
                                          )
                                        ]
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )

                        ],
                      )
                  ),
                ),
                     if (_visible == true)
                     AnimatedContainer(
                    width: 400,
                    color: Color(0xFFf1f1f1),
                    height: 510,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInCirc,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Who is point of contact at your charity?'),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black54)
                              ),
                              height: 40,
                              child: DropdownButton<String>(
                                underline: SizedBox(),
                                isExpanded: true,
                                icon: Icon(CupertinoIcons.chevron_down,size: 15,),
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                                hint: Text(selectedOption),
                                items: <String>['   Male', '   Female'].map((
                                    String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      setState(() {
                                        selectedOption = value;
                                      });
                                    },
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text('Whats their email address?'),
                          ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(

                          color: Colors.white,
                          height: 40,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))
                            ),

                          )
                          ),
                      ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text('Whats their Phone#?'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                                color: Colors.white,
                                height: 40,
                                child: TextField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))
                                  ),

                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text('Who is point of contact at your charity?'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black54)
                              ),
                              height: 40,
                              child: DropdownButton<String>(
                                underline: SizedBox(),
                                isExpanded: true,
                                icon: Icon(CupertinoIcons.chevron_down,size: 15,),
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                                hint: Text(Drop2),
                                items: <String>['  Contact of charity Item 1 ', '   Contact of charity Item 2'].map((
                                    String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      setState(() {
                                        Drop2 = value;
                                      });
                                    },
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                              ),
                            ),
                          ),



                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: SizedBox(
                                height: 40,
                                width: 150,
                                child: ElevatedButton(
                                  onPressed: () {},style: ElevatedButton.styleFrom(primary: Color(0xFF82c6eb)), child: Text('Send'),
                                ),
                              ),
                            ),
                          ),

                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Text('CLICK AGAIN REMIND THEM IF BIG DELAY',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600
                                ),),
                            ),
                          ),

                          Row(
                            children: [
                              Expanded(child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, top: 10),
                                child: RichText(
                                  textAlign: TextAlign.left,
                                  text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(text: "THEY WILL GET A",
                                            style: TextStyle(
                                                color: Color(0xFF4d4d4d),fontWeight: FontWeight.w600,fontSize: 13)),
                                        TextSpan(
                                            text:  " MESSAGE REGARDING SEEDFORME",
                                            style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600,fontSize: 13)),
                                        TextSpan(
                                            text:  "  & LINK TO PUT THE INFO IN & SEE YOR SEEDFORME PLEASE LET THEM KNOW. OTHERWISE THEY CAN "
                                                 " GIVE YOU THE INFO & YOU ENTRE IT",
                                            style: TextStyle(color: Color(0xFF4d4d4d),fontWeight: FontWeight.w600,fontSize: 13))
                                      ]
                                  ),
                                ),
                              ))
                            ],
                          ),
                          Center(
                            child: SizedBox(
                                width: 300,
                                child: Divider(
                                  color: Colors.black54,
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                ),


                Container(
                  width: 400,
                  height: 1560,
                  color:  Color(0xFFf1f1f1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Charity Website'),
                      ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                      color: Colors.white,
                      height: 40,
                      child:TextField(
                        keyboardType: TextInputType.url,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))
                          ),

                              ),
                            ),
                       ),
                       Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('How long his this charity been in existence?'),
                        ),
                       Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white,
                                border: Border.all(color: Colors.black54)
                            ),

                            height: 40,
                            child: DropdownButton<String>(
                              underline: SizedBox(),
                              isExpanded: true,
                              icon: Icon(CupertinoIcons.chevron_down,size: 15,),
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                              hint: Text(Drop3),
                              items: <String>['  Time Required ', '   For Some Issue'].map((
                                  String value) {
                                return DropdownMenuItem<String>(
                                  onTap: () {
                                    setState(() {
                                      Drop3 = value;
                                    });
                                  },
                                  value: value,
                                  child: new Text(value),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('How many members does the charity have?'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                            border: Border.all(color: Colors.black54)
                          ),

                          height: 40,
                          child: DropdownButton<String>(
                            underline: SizedBox(),
                            isExpanded: true,
                            icon: Icon(CupertinoIcons.chevron_down,size: 15,),
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                            hint: Text(Drop4),
                            items: <String>['  2 Members ', '   4 Members'].map((
                                String value) {
                              return DropdownMenuItem<String>(
                                onTap: () {
                                  setState(() {
                                    Drop4 = value;
                                  });
                                },
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('if yes what is the name of agency?'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                              border: Border.all(color: Colors.black54)
                          ),
                          height: 40,
                          child: DropdownButton<String>(
                            underline: SizedBox(),
                            isExpanded: true,
                            icon: Icon(CupertinoIcons.chevron_down,size: 15,),
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                            hint: Text(Drop5),
                            items: <String>['  Agency Name  ', '   UK Agency'].map((
                                String value) {
                              return DropdownMenuItem<String>(
                                onTap: () {
                                  setState(() {
                                    Drop5 = value;
                                  });
                                },
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Who is your overseer?'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                              border: Border.all(color: Colors.black54)
                          ),
                          height: 40,
                          child: DropdownButton<String>(
                            underline: SizedBox(),
                            isExpanded: true,
                            icon: Icon(CupertinoIcons.chevron_down,size: 15,),
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                            hint: Text(Drop6),
                            items: <String>['  FCFA member 1 ', '   FCFA member 2', '  FCFA member 3', '  FCFA member 4'].map((
                                String value) {
                              return DropdownMenuItem<String>(
                                onTap: () {
                                  setState(() {
                                    Drop6 = value;
                                  });
                                },
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ),





                      Center(
                        child: Row(
                          children: [
                            Expanded(child: Padding(
                              padding: const EdgeInsets.only(top: 24.0,left: 10),
                              child: RichText(
                                text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text: "Is this Charity's a",
                                          style: TextStyle(
                                              color: Colors.black)),
                                      TextSpan(
                                          text: " mission sending agency",
                                          style: TextStyle(
                                              color: Colors.blue
                                          )
                                      ),
                                      TextSpan(
                                          text: " or member of any mission sending agency?" ,
                                          style: TextStyle(
                                              color: Colors.black))
                                    ]
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),
                      Row(
                        children: [

                          Radio(value: 0, groupValue: id,activeColor: Color(0xFF755047), hoverColor: Color(0xFF755047), onChanged: (val) {
                            setState(() {
                              id = 0;
                              radioButtonItem = 'One';
                            });
                          }
                          ),
                          InkWell( onTap: (){
                            setState(() {
                              id = 0;
                              radioButtonItem = 'One';
                            });
                          },
                              child: Text('Yes')),

                          Padding(
                            padding: const EdgeInsets.only(left: 38.0),
                            child: Radio(value: 1,

                                groupValue: id,activeColor: Color(0xFF755047),
                                onChanged: (val) {
                                  setState(() {
                                    radioButtonItem = 'Two';
                                    id = 1;
                                  });
                                }
                            ),
                          ),
                          InkWell( onTap: (){
                            setState(() {
                              radioButtonItem = 'Two';
                              id = 1;
                            });
                          },
                              child: Text('No')),

                          Padding(
                            padding: const EdgeInsets.only(left: 38.0),
                            child: Radio(value: 2,activeColor: Color(0xFF755047),
                                groupValue: id,
                                onChanged: (val) {
                                  setState(() {
                                    radioButtonItem = 'Three';
                                    id = 2;
                                  });
                                }
                            ),
                          ),
                          InkWell(onTap: (){
                            setState(() {
                              radioButtonItem = 'Three';
                              id = 2;
                            });
                          },
                              child: Text('Not Sure')),


                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: RichText(text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(text: "Is this charity's a",
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(text: ' member of ECFA?',
                                  style: TextStyle(color: Colors.blue)),
                            ]
                        )),
                      ),

                      Row(
                        children: [
                          Radio(value: 3, groupValue: myid,activeColor: Color(0xFF755047), onChanged: (val) {
                            setState(() {
                              myid = 3;
                              radioButtonTwo = 'Edight';
                            });
                          }
                          ),
                          InkWell(
                              onTap: (){
                                setState(() {
                                  myid = 3;
                                  radioButtonTwo = 'Edight';
                                });
                              },
                              child: Text('Yes')),

                          Padding(
                            padding: const EdgeInsets.only(left: 38.0),
                            child: Radio(value: 4,
                                groupValue: myid,activeColor: Color(0xFF755047),
                                onChanged: (val) {
                                  setState(() {
                                    radioButtonTwo = 'Edight';
                                    myid = 4;
                                  });
                                }
                            ),
                          ),
                          InkWell(
                              onTap: (){
                                radioButtonTwo = 'Edight';
                                myid = 4;
                              },
                              child: Text('No')),

                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 50.0, left: 40),
                              child: Text('Become a member of ECFA',
                                style: TextStyle(color: Colors.blue),),
                            ),
                          )

                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 11.0),
                              child: RichText(text:
                              TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "Did this charity's Boards of Directors approve you for missions or"
                                            " ministry?",
                                        style: TextStyle(color: Colors.black))
                                  ]
                              ),),
                            ),
                          ),

                        ],
                      ),

                      Row(
                        children: [
                          Radio(value: 5, groupValue: myidd,activeColor: Color(0xFF755047), onChanged: (val) {
                            setState(() {
                              myidd = 5;
                              radioButtnThree = 'Two';
                            });
                          }
                          ),
                          InkWell(
                              onTap: (){
                                myidd = 5;
                                radioButtnThree = 'Two';
                              },
                              child: Text('Yes')),

                          Padding(
                            padding: const EdgeInsets.only(left: 38.0),
                            child: Radio(value: 6,
                                groupValue: myidd,activeColor: Color(0xFF755047),
                                onChanged: (val) {
                                  setState(() {
                                    myidd = 6;
                                    radioButtnThree = 'Two';
                                  });
                                }
                            ),
                          ),
                          InkWell(
                              onTap: (){
                                setState(() {
                                  radioButtnThree = 'Two';
                                  myidd = 6;
                                });
                              },
                              child: Text('No')),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: RichText(text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(text: 'Do You have a',
                                      style: TextStyle(color: Colors.black)),
                                  TextSpan(text: ' defined & approved budget',
                                      style: TextStyle(color: Colors.blue)),
                                  TextSpan(text: ' with the charity?',
                                      style: TextStyle(color: Colors.black)),
                                ]
                            )),
                          ))
                        ],
                      ),
                      Row(
                        children: [
                          Radio(value: 7, groupValue: myiddd,activeColor: Color(0xFF755047), onChanged: (val) {
                            setState(() {
                              myiddd = 7;
                              radioButtnfour = 'One';
                            });
                          }
                          ),
                          InkWell(onTap: (){setState(() {
                            myiddd = 7;
                            radioButtnfour = 'One';
                          });},
                              child: Text('Yes')),

                          Padding(
                            padding: const EdgeInsets.only(left: 38.0),
                            child: Radio(value: 8,
                                groupValue: myiddd,activeColor: Color(0xFF755047),
                                onChanged: (val) {
                                  setState(() {
                                    radioButtnfour = 'Two';
                                    myiddd = 8;
                                  });
                                }
                            ),
                          ),
                          InkWell(
                              onTap: (){
                                setState(() {
                                  radioButtnfour = 'Two';
                                  myiddd = 8;
                                });
                              },
                              child: Text('No')),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Container(
                          width: 400,
                          height: 70,
                          color: Color(0xFF387dc2),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  FontAwesomeIcons.cloudDownloadAlt, size: 40,
                                  color: Colors.white,),
                              ),
                              Expanded(child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: InkWell(
                                  // onTap: (){
                                  //   setState(() {
                                  //     _othervisi = !_othervisi;
                                  //   });
                                  // },
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(text: 'UPLOAD',
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .underline,
                                                  fontWeight: FontWeight.w500)),
                                          TextSpan(
                                              text: '(& KEEP UPDATED PERIODICALLY)ITEM'
                                                  'BELOW TO ASK CHARITY POINT OF CONTACT FOR HELP',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500)),
                                          TextSpan(text: ' CLICK HERE',recognizer: new TapGestureRecognizer()..onTap=(){
                                            setState(() {
                                            _othervisi = !_othervisi;
                                            });
                                          },
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .underline,
                                                  fontWeight: FontWeight.w500)),
                                        ]
                                    ),
                                  ),
                                ),
                              )
                              )
                            ],
                          ),
                        ),
                      ),
                      if(_othervisi == true)

                      Row(
                        children: [
                          Expanded(child:  Padding(
                            padding: const EdgeInsets.only(top: 18.0,left: 8),
                            child: RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text:' 1)',style: TextStyle(color: Colors.black)),
                                      TextSpan(text: " IRS Determination & tax filling.",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                      TextSpan(text: " Find by:",style: TextStyle(color: Colors.black,)),

                                    ]
                                ),
                              ),
                          ),
                          ),
                        ],
                      ),
                      if(_othervisi == true)
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: RichText(
                          text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: "A) Search For Tax Exempt Organization Open Directions>", style: TextStyle(color: Color(0xFF4947aa)),)
                              ]
                          ),
                        ),
                      ),
                      if(_othervisi == true)
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: RichText(
                          text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: "B)", style: TextStyle(color: Colors.black54),),
                                TextSpan(text: " Ask Charity's Admin for these", style: TextStyle(color: Color(0xFF4947aa)),)
                              ]
                          ),
                        ),
                      ),
                      if(_othervisi == true)
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Text(('N/A check circle if letter & or tax filling not available after dilingent effort')),
                      ),
                      if(_othervisi == true)
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text:' 2)',style: TextStyle(color: Colors.black)),
                                TextSpan(text: " Charity's Articles of incorporation.",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                TextSpan(text: " Find by:",style: TextStyle(color: Colors.black,)),
                              ]
                          ),
                        ),
                      ),
                      if(_othervisi == true)
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: RichText(
                          text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: "A) ", style: TextStyle(color: Colors.black,fontSize: 12),),
                                TextSpan(text: " Go to your state's Division of Corporations", style: TextStyle(color: Color(0xFF4947aa)),),

                                TextSpan(text: " Open Directions >", style: TextStyle(color: Colors.black54),)
                              ]
                          ),
                        ),
                      ),
                      if(_othervisi == true)
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: RichText(
                          text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: "B)", style: TextStyle(color: Colors.black54),),
                                TextSpan(text: " Ask Charity's Admin for these", style: TextStyle(color: Color(0xFF4947aa)),)
                              ]
                          ),
                        ),
                      ),
                      if(_othervisi == true)
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Text(('N/A check circle if letter & or tax filling not available after dilingent effort')),
                      ),
                      if(_othervisi == true)
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: RichText(
                          text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: " 3) Charity's Bylaws.Ask Charity's Admin for these.", style: TextStyle(color: Colors.black),),
                              ]
                          ),
                        ),
                      ),
                      if(_othervisi == true)
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Text(('N/A check circle if letter & or tax filling not available after dilingent effort')),
                      ),
                      if(_othervisi == true)

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(text: "4)",style: TextStyle(color: Colors.black)),
                              TextSpan(text: "  Copy of your (registered user's; & charity point",style: TextStyle(color: Colors.black)),
                            ]
                          ),
                        ),
                      ),
                      if (_othervisi)
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text("of contact's?) driver licence or other official ID if no driver licence",style: TextStyle(fontSize: 16),),
                      ),



                      if(_othervisi == true)
                      Padding(
                        padding: const EdgeInsets.only(top: 22.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 35.0),
                              child: SizedBox(
                                width: 120,
                                height: 35,
                                child: ElevatedButton(
                                  onPressed: () {

                                  },style: ElevatedButton.styleFrom(primary: Color(0xFF82c6eb)), child: Text('EXIT'),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: SizedBox(
                                width: 120,
                                height: 35,
                                child: ElevatedButton(
                                  onPressed: () {

                                  },style: ElevatedButton.styleFrom(primary: Color(0xFF82c6eb)), child: Text('SAVE'),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Row(
                          children: [
                            Radio(value: 5, groupValue: idddd,activeColor: Color(0xFF755047), onChanged: (value){
                              setState(() {
                                radiofive = 'one';
                                idddd = 5;
                              });
                            }),
                            Expanded(child: InkWell(
                              onTap: (){
                                setState(() {
                                  radiofive = 'one';
                                  idddd = 5;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 13.0),
                                child: RichText(text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text: "I agree to all",style: GoogleFonts.nobile(color: Colors.black,fontSize: 13),),
                                      TextSpan(text: " Terms & Conditions, Privacy & Cookies Policies",style: GoogleFonts.nobile(color: Colors.blue,fontSize: 13),),
                                    ]
                                )),
                              ),
                            )
                            ),

                          ],
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          children: [
                            Expanded(child: Center(
                              child: RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(text: "By clicking Save & or Exit you state under penalty of perjury(that you could be in legal trouble if the"
                                        "information is not truthful)that",style: GoogleFonts.nobile(color: Colors.black,fontSize: 13),),
                                    TextSpan(text: " you have permission from your charity to use SeedForMe",style: GoogleFonts.nobile(color: Colors.blue,fontSize: 13),),
                                    TextSpan(text: " and SeedForMe can verify the information including but not limited to doing background check, & act"
                                        " according to",style: GoogleFonts.nobile(color: Colors.black,fontSize: 13),),
                                    TextSpan(text: " Terms & Conditions with respect to your account/Public View Mode",style: GoogleFonts.nobile(color: Colors.blue,fontSize: 13),)
                                  ]
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 14.0),
                          child: SizedBox(
                            width: 300,
                            height: 43,
                            child: ElevatedButton(
                              onPressed: (){},style: ElevatedButton.styleFrom(primary: Color(0xFF82c6eb)),child: Text('Go TO DONATION SETUP ENTER INFO',textAlign:TextAlign.center,style: GoogleFonts.nobile(fontSize: 16,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                      ),

                      Center(

                          child: Container(
                            width: 300,
                            height: 70,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 0.0,),
                                child: Text("Need Your help in Donation area to "
                                    "get Donation into charity"
                                    " account Make Sure you are able to get donation into charity account",textAlign: TextAlign.center,style: GoogleFonts.nobile(fontSize: 15),),
                              ),
                            ),

                          ),
                        ),


                    ]
                  ),
                )



              ],
            ),



          ],
        ),
      ),
    );
  }
}



