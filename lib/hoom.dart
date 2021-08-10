import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class hoom extends StatefulWidget {
  const hoom({Key? key}) : super(key: key);

  @override
  _hoomState createState() => _hoomState();
}

class _hoomState extends State<hoom> {
  var _switch = false;
  String selectedOption = '';
  String Drop2 ='';
  String Drop3 ='';
  String Drop4 ='';
  String Drop5 ='';

  var _visible = true;



  String radioButtonItem = 'ONE';
  int id = 1;

  String radioButtonTwo = 'Two';
  var myid = 2;

  String radioButtnThree = 'Three';
  var myidd = 3;

  String radioButtnfour = 'Three';
  var myiddd = 4;

  String radiofive = 'five';
  var idddd = 5;


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _backpress,
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF2596be),
              title: Text('Seed For Me'),
              centerTitle: true,
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
                        width: 60,
                        height: 50,
                        color: Color(0xFF444444),
                        child: Icon(Icons.play_arrow,color: Colors.white,),
                      ),
                    )
                      ),
                  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: CupertinoSwitch(value: (_switch),
                              activeColor: Color(0xFF3fc6ee),
                              trackColor: Colors.red,
                              onChanged: (value) {
                                setState(() {
                                  _switch = value;
                                });
                              }),
                        ),


                          Expanded(child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 7, top: 8),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: RichText(
                                text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'ALI IS IN NON-PUBLIC VIEW MODE',
                                          style: TextStyle(color: Color(0xFF414141),
                                              fontSize: 14,
                                              wordSpacing: 2,
                                              fontWeight: FontWeight.w500)),
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

                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 15.0, right: 40, top: 15,),
                            child: Text(
                              'Go non public view mode if you want to hold subscription '
                                  'between mission on if making major design changes',
                              style: TextStyle(fontWeight: FontWeight.w500),),
                          ),
                        ),
                      ],
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
                            color: Color(0xFF2596be),
                            child: Row(
                              children: [
                                Expanded(child: Padding(
                                  padding: const EdgeInsets.only(left: 18.0,right: 20),
                                  child: RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(text: 'PLEASE ANSWER OR CONFIRM INFO TO ASK CHARITY'),
                                        TextSpan(text: ' POINT OF CONTACT OF HELP '),
                                        TextSpan(text: 'Click Here'
                                        )
                                      ]
                                    ),
                                  ),
                                )),
                              ],
                            )
                          ),
                        )
                      ],
                    ),

                    Container(
                      width: 400,
                      height: 1650,
                      color: Color(0xFFf1f1f1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                                'Who is Point of contact at your charity?'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              width: 300,
                              height: 40,
                              color: Colors.white,
                              child: DropdownButton<String>(
                                underline: SizedBox(),
                                isExpanded: true,

                                hint: Text(selectedOption),
                                items: <String>['Male', 'Female'].map((
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
                            padding: const EdgeInsets.all(14.0),
                            child: Text('Whats there email Address?'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              width: 300,
                              height: 40,
                              color: Colors.white,
                              child: TextField(
                                textAlign: TextAlign.left,
                                keyboardType: TextInputType.emailAddress,
                                textCapitalization: TextCapitalization.characters,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                ),

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text("What's their phone#?"),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              width: 300,
                              height: 40,
                              color: Colors.white,
                              child: TextField(
                                textAlign: TextAlign.left,
                                keyboardAppearance: Brightness.dark,
                                keyboardType: TextInputType.phone,
                                textCapitalization: TextCapitalization.characters,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                ),

                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                                "What's their position & title at you charity? "),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              width: 300,
                              height: 40,
                              color: Colors.white,
                              child: TextField(
                                textAlign: TextAlign.left,
                                keyboardType: TextInputType.text,
                                textCapitalization: TextCapitalization.characters,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                ),

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
                                    decoration: TextDecoration.underline,
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
                                  text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(text: 'THEY WILL GET A',
                                            style: TextStyle(
                                                color: Color(0xFF4d4d4d),fontWeight: FontWeight.w600)),
                                        TextSpan(
                                            text: ' MESSAGE REGARDING SEEDFORME',
                                            style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600)),
                                        TextSpan(
                                            text: ' & LINK TO PUT THE INFO IN & SEE YOR SEEDFORME PLEASE LET THEM KNOW. OTHERWISE THEY CAN '
                                                ' GIVE YOU THE INFO & YOU ENTRE IT',
                                            style: TextStyle(color: Color(0xFF4d4d4d),fontWeight: FontWeight.w600))
                                      ]
                                  ),
                                ),
                              ))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 30),
                            child: SizedBox(
                              width: 300,
                              child: Divider(
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                                "What's their position & title at you charity? "),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              width: 300,
                              height: 40,
                              color: Colors.white,
                              child: TextField(
                                textAlign: TextAlign.left,
                                keyboardType: TextInputType.text,
                                textCapitalization: TextCapitalization.characters,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder()
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                                'Who is Point of contact at your charity?'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              width: 300,
                              height: 40,
                              color: Colors.white,
                              child: DropdownButton<String>(
                                elevation: 10,
                                underline: SizedBox(),
                                isExpanded: true,
                                hint: Text(Drop2),
                                items: <String>['Member Name', 'Member Age'].map((
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
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                                'Who is Point of contact at your charity?'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              width: 300,
                              height: 40,
                              color: Colors.white,
                              child: DropdownButton<String>(
                                underline: SizedBox(),
                                isExpanded: true,
                                hint: Text(Drop3),
                                items: <String>['Helping for Other','For Other Purpose'].map((
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
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                                'Who is Point of contact at your charity?'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              width: 300,
                              height: 40,
                              color: Colors.white,
                              child: DropdownButton<String>(
                                underline: SizedBox(),
                                isExpanded: true,
                                hint: Text(Drop4),
                                items: <String>['Different Member', 'Same Member'].map((
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
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                                'Who is Point of contact at your charity?'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              width: 300,
                              height: 40,
                              color: Colors.white,
                              child: DropdownButton<String>(
                                underline: SizedBox(),
                                isExpanded: true,
                                hint: Text(Drop5),
                                items: <String>['Charity ', 'Poor Peoples'].map((
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
                          Center(
                            child: Row(
                              children: [
                                Expanded(child: Padding(
                                  padding: const EdgeInsets.only(top: 24.0,),
                                  child: RichText(
                                    text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(text: '   Is this charity a',
                                              style: TextStyle(
                                                  color: Colors.black)),
                                          TextSpan(
                                              text: ' mission sending agency ',
                                              style: TextStyle(
                                                  color: Colors.blue
                                              )
                                          ),
                                          TextSpan(
                                              text: ' or member of any mission sending agency?',
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
                                  TextSpan(text: 'Is this Charity a',
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
                                            text: "Did this charity Boards of Directors approve you for mission or"
                                                "ministry?",
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
                                      TextSpan(text: 'with the charity',
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
                              height: 80,
                              color: Color(0xFF2596be),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(
                                      FontAwesomeIcons.cloudDownloadAlt, size: 60,
                                      color: Colors.white,),
                                  ),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: RichText(
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
                                            TextSpan(text: ' CLICK HERE',
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .underline,
                                                    fontWeight: FontWeight.w500)),
                                          ]
                                      ),
                                    ),
                                  )
                                  )
                                ],
                              ),
                            ),
                          ),

                          Row(
                            children: [
                              Expanded(child: Padding(
                                padding: const EdgeInsets.only(left: 15.0,right: 55,top: 12),
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text: "1)",style: TextStyle(color: Colors.black)),
                                      TextSpan(text: "  IRS Determination & tax filling.",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)),
                                      TextSpan(text: " Find by: ",style: TextStyle(color: Colors.black)),
                                      TextSpan(text: "      A)  Search For Tax Exempt Organization Open"
                                          "Direction >",style: TextStyle(color: Colors.blue)),
                                      TextSpan(text:  "                                                                                                                                             B)",style: TextStyle(color: Colors.black,fontSize: 9)),
                                      TextSpan(text: " Ask Charity Admin of these",style: TextStyle(color: Colors.blue)),
                                      TextSpan(text: ""
                                          "                                                                     2)",style: TextStyle(color: Colors.black)),
                                      TextSpan(text: " Charity Articles Of Incorporation.",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                      TextSpan(text: "  Find by: ",style: TextStyle(color: Colors.black)),
                                      TextSpan(text: " A): ",style: TextStyle(color: Colors.black,fontSize: 10)),
                                      TextSpan(text: " Go Your State's Division Of Corporation ",style: TextStyle(color: Colors.blue,fontSize: 12)),
                                      TextSpan(text: "Open Directio>: ",style: TextStyle(color: Colors.black,fontSize: 9)),

                                    ]
                                  ),
                                ),
                              ))
                            ],
                          ),



                          Padding(
                            padding: const EdgeInsets.only(top: 22.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 35.0),
                                  child: SizedBox(
                                    width: 120,
                                    height: 45,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        _showdialogg(context);
                                      },style: ElevatedButton.styleFrom(primary: Color(0xFF82c6eb)), child: Text('EXIT'),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: SizedBox(
                                    width: 120,
                                    height: 45,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        _showdialog(context);
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
                                  child: RichText(text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(text: "I agree to all",style: TextStyle(color: Colors.black)),
                                        TextSpan(text: " Terms & Condition, Privacy & Cookies Plicies",style: TextStyle(color: Colors.blue)),
                                      ]
                                  )),
                                ))
                              ],
                            ),
                          )

                        ],
                      ),
                    ),


                ],
              ),
            )

        ),
      ),
    );
  }

  Future<bool> _backpress() async {
    return await showCupertinoDialog(context: context, builder: (context) =>
        CupertinoAlertDialog(
          content: Column(
            children: [
              Text('Do You Want to Close your Application'),
            ],
          ),
          actions: [
            MaterialButton(onPressed: () {
              Navigator.of(context).pop(false);
            }, child: Text('NO'),),
            MaterialButton(onPressed: () {
              Navigator.of(context).pop(true);
            }, child: Text('Yes'),),
          ],
        ));
  }


  void _showdialogg(BuildContext context) {
    showCupertinoDialog(context: context, builder: (context) =>
        CupertinoAlertDialog(
          content: Column(
            children: [
              Text('User Not Exit Application Without Fill Form ')
            ],
          ),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Ok'))
          ],
        ));
  }

  void _showdialog(BuildContext context) {
    showCupertinoDialog(context: context, builder: (context) =>
        CupertinoAlertDialog(
          content: Column(
            children: [
              RichText(text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'All Fields Are'),
                    TextSpan(
                        text: 'Required', style: TextStyle(color: Colors.red)),

                  ]
              )),

            ],
          ),
          actions: [
            TextButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('OK'))
          ],
        ));
  }
}