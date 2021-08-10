
import 'dart:core';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class srchbar extends StatefulWidget {
  const srchbar({Key? key}) : super(key: key);

  @override
  _srchbarState createState() => _srchbarState();
}

class _srchbarState extends State<srchbar> {
  String selectedOption = 'Select Country';
  var _value = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _backpress,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Container(
                  width: 130,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7)
                  ),
                  child: CupertinoTextField(
                    showCursor: true,
                    placeholder: 'Search',
                    suffix: Icon(Icons.search,color: Colors.red,),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: Container(
                  color: Colors.white,
                  width: 100,
                  height: 53,
                  child: DropdownButton<String>(
                    underline: SizedBox(),
                    dropdownColor: Colors.white,
                    iconEnabledColor: Colors.pink,
                    focusColor: Colors.white,
                    isExpanded: true,
                    hint: Text(selectedOption),
                    items: <String>['Pakistan', 'India', 'Italy', 'Taiwan','SaudiArabia','America', 'Bangladesh','UnitedArab Emirates'].map((String value) {
                      return DropdownMenuItem<String>(
                        onTap: (){
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
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: 20,
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications),tooltip: 'Notification Reminder',),
                ),
              )
            ],
          ),
          brightness: Brightness.dark,
        ),
        body:  ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0,left: 12,),
              child: Text('Good Morning EveryOne ,',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 148.0,left: 10,top: 10),
              child: Text('Thinking of lunch? There are 439 restaurants in your Area ',style: TextStyle(fontSize: 16),),
            ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 58.0),
                  child: Container(
                    width: 310,
                    height: 180,
                    decoration: BoxDecoration(
                    ),
                    child: Card(
                      color: Colors.pink,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.pink),
                        borderRadius: BorderRadius.circular(7)
                      ),
                      elevation: 12,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 204.0),
                            child: Container(
                              width: 100,
                              child: Image.network('https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg?w=1155&h=1528'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 128.0,top:20),
                            child: Text('Food Delivery', style: GoogleFonts.autourOne(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 108.0),
                            child: Text('Food Delivery You Love',style: TextStyle(
                              fontWeight: FontWeight.w300,color: Colors.white
                            ),),
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 128.0,top: 10),
                              child: ElevatedButton.icon(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>foodpage()));
                                },style: ElevatedButton.styleFrom(primary: Colors.white,elevation: 5,side: BorderSide(color: Colors.yellow)),
                                label: Text('Order Now',style: TextStyle(color: Colors.black),),icon: Icon(Icons.arrow_forward,color:Colors.black),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                    Container(
                    width: 310,
                          height: 180,
                          decoration: BoxDecoration(
                          ),
                          child: Card(
                          color: Colors.pinkAccent,
                          shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.pinkAccent),
                          borderRadius: BorderRadius.circular(7)
                          ),
                            elevation: 12,
                          child: Column(
                          children: [
                          Padding(
                          padding: const EdgeInsets.only(left: 204.0),
                          child: Container(
                          width: 100,
                          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ6Q_K6QTnOnoVxI_5h-aCH0jthEP4_CcBiQ&usqp=CAU'),
                          ),
                          ),
                          Padding(
                          padding: const EdgeInsets.only(right: 128.0,top:20),
                          child: Text('Food Delivery', style: GoogleFonts.autourOne(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                          padding: const EdgeInsets.only(right: 108.0),
                          child: Text('Food Delivery You Love',style: TextStyle(
                          fontWeight: FontWeight.w300,color: Colors.white
                          ),),
                          ),
                          SizedBox(
                          child: Padding(
                          padding: const EdgeInsets.only(right: 128.0,top: 10),
                          child: ElevatedButton.icon(
                          onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>foodpage()));},style: ElevatedButton.styleFrom(primary: Colors.white,elevation: 5,side: BorderSide(color: Colors.orange)),
                          label: Text('Order Now',style: TextStyle(color: Colors.black),),icon: Icon(Icons.arrow_forward,color:Colors.black),
                          ),
                          ),
                          ),

                          ],
                          ),
                          ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right: 130.0),
                            child: Container(
                              width: 180,
                              height: 170,
                              decoration: BoxDecoration(

                              ),
                              child: Card(
                                elevation: 12,
                                child: Container(
                                  child: Image.network('https://sc04.alicdn.com/kf/Hdd369d4b3ebd439db9117f57884802bdu/231704152/Hdd369d4b3ebd439db9117f57884802bdu.jpg',),
                                ),
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.circular(17),
                                ),
                              ),
                            ),
                          ),

                          Container(
                          width: 314,
                          height: 190,
                          decoration: BoxDecoration(
                          ),
                          child: Card(
                          color: Colors.orange,
                          shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.orange),
                          borderRadius: BorderRadius.circular(7)
                          ),
                          elevation: 6,
                          child: Column(
                          children: [
                          Padding(
                          padding: const EdgeInsets.only(left: 204.0),
                          child: Container(
                          width: 100,
                          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3qEk7VvqGGYlQzMrrKLmq9i5aCZCKcnMgBQ&usqp=CAU'),
                          ),
                          ),
                          Padding(
                          padding: const EdgeInsets.only(right: 128.0,top:20),
                          child: Text('Food Delivery', style: GoogleFonts.autourOne(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                          padding: const EdgeInsets.only(right: 108.0),
                          child: Text('Food Delivery You Love',style: TextStyle(
                          fontWeight: FontWeight.w300,color: Colors.white
                          ),),
                          ),
                          SizedBox(
                          child: Padding(
                          padding: const EdgeInsets.only(right: 128.0,top: 10),
                          child: ElevatedButton.icon(
                          onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>foodpage()));},style: ElevatedButton.styleFrom(primary: Colors.white,elevation: 5,side: BorderSide(color: Colors.pinkAccent)),
                          label: Text('Order Now',style: TextStyle(color: Colors.black),),icon: Icon(Icons.arrow_forward,color:Colors.black),
                          ),
                          ),
                          ),

                          ],
                          ),
                          ),
                          ),

                                  ],
                                )

                              ],
                            ),

        endDrawer: SizedBox(
          width: 190,
          child: Drawer(
            elevation: 10,
            child: Column(
              children: [
                UserAccountsDrawerHeader(accountName: Text(''), accountEmail: Text(''),
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                  otherAccountsPictures: [
                    CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                  ],
                ),
                ListTile(
                  title: Text('Login'),
                  leading: Icon(FontAwesomeIcons.facebook,color: Colors.blue,),
                  onTap: (){},
                ),

                ListTile(
                  title: Text('About Application'),
                  trailing: CupertinoSwitch(value: _value , onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                    activeColor: Colors.yellow,


                  ),
                  
                ),
                if (_value == false)
                  Text('Applications can also be grouped into categories by licensing style. Proprietary software programs, such as Adobe Photoshop, are applications that are owned under copyright. End users can buy or license proprietary applications through the vendor providing the software. They cannot modify these applications; they can only add functionality to them via third-party add-ons. Open source applications, such as WordPress, provide the source code for end users and developers to use and modify. Software companies and individual developers typically make open source applications freely available under a generic or public license')

              ],
            ),

          ),
        ),

      ),
    );
  }

  Future<bool> _backpress() async {
    return (await showCupertinoDialog(context: context, builder: (context)=>CupertinoAlertDialog(
      insetAnimationCurve: Curves.easeInCubic,
      content: Column(
        children: [
          Text('Do You Want To Close Your Application',style: GoogleFonts.autourOne(fontSize: 13,fontWeight: FontWeight.bold),),
        ],
      ),
      actions: [
        TextButton(onPressed: (){Navigator.of(context).pop(true);}, child: Text('Yes',style: GoogleFonts.arvo(fontSize: 13),)),
        TextButton(onPressed: (){Navigator.of(context).pop(false);}, child: Text('No',style: GoogleFonts.nobile(fontSize: 13),)),
      ],
    )));
  }
}



class foodpage extends StatefulWidget {
  const foodpage({Key? key}) : super(key: key);

  @override
  _foodpageState createState() => _foodpageState();
}

class _foodpageState extends State<foodpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.shopping_cart))
        ],
        title: Text('Order'),
      ),
      body:  SingleChildScrollView(
        child: Column(

            children: [
              Container(
                width: 360,
                height: 200,
                child: Image.network('https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg?w=1155&h=1528'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text('Item Information',style: GoogleFonts.gabriela(fontSize: 22,fontWeight: FontWeight.bold),),
              ),
              Expanded(child:
              Row(
                children: [
                  Text('ALI IS IN NON-PUBLIC VIEW MODE '
                      'ALI IS IN NON-PUBLIC VIEW MODE')
                ],
              )),
              Padding(
                padding: const EdgeInsets.only(top: 14.0,right: 20,left: 30),
                child: Text('Food is usually of plant, animal or fungal origin, and contains essential nutrients, such as carbohydrates, fats, proteins, vitamins, or minerals. The substance is ingested by an organism and assimilated by the'
                    ' organisms cells to provide energy, maintain life, or stimulate growth',style: GoogleFonts.arvo(fontSize: 16),),
              ),




              Column(
                children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 208.0),
                       child: SizedBox(
                        width: 200,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: (){},child: Text('Add to Cart'),
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













