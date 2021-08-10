
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Test2 extends StatefulWidget {
  const Test2({Key? key}) : super(key: key);

  @override
  _Test2State createState() => _Test2State();
}

class _Test2State extends State<Test2> {

  GlobalKey <FormState> formkey = GlobalKey<FormState>();

  void validate (){
    if (formkey.currentState!.validate()){
      print('Ok');
    }else{
      print('error');
    }
  }



  TextEditingController usernameController = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmpassword = new TextEditingController();
  TextEditingController Address = new TextEditingController();

  String _message = '';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lime
      ),
      home: Scaffold(
        appBar: AppBar(

          leading: IconButton(icon: Icon(Icons.arrow_back_ios_outlined),onPressed: (){
            
          },),
          title: Text('From Application', style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold, fontSize: 22),),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child:
            Form(
              key: formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: TextFormField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          labelText: 'User Name', labelStyle: GoogleFonts.antic(fontSize: 20, fontWeight: FontWeight.bold)
                        ),
                        validator: (value){
                          if (value!.isEmpty){
                            return 'User Name Field is Required';
                          }else{
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),


                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          icon: Icon(Icons.phone),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                            labelText: 'Phone #', labelStyle: GoogleFonts.antic(fontSize: 20, fontWeight: FontWeight.bold)
                        ),
                        autocorrect: true,
                        validator: (value){
                          if (value!.isEmpty){
                            return ' Phone Field is Required';
                          }else{
                            return null;
                          }
                        },
                      ),
                    ),

                  Padding(
                    padding: const EdgeInsets.all(18.0),


                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          icon: Icon(Icons.password),
                          labelText: 'Password', labelStyle: GoogleFonts.antic(fontSize: 20, fontWeight: FontWeight.bold)
                      ),
                      validator: (value){
                        if (value!.isEmpty){
                          return 'Password is Required';
                        }else{
                          return null;
                        }
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(18.0),


                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.password),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          labelText: 'Confirm Password', labelStyle: GoogleFonts.antic(fontSize: 20, fontWeight: FontWeight.bold)
                      ),
                      validator: (value){
                        if (value!.isEmpty){
                          return 'Confirm Password is Required';
                        }else{
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),


                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.location_city),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          labelText: 'Address', labelStyle: GoogleFonts.antic(fontSize: 20, fontWeight: FontWeight.bold)
                      ),
                      validator: (value){
                        if (value!.length < 5){
                          return
                              'Not Less Than 5';
                        }
                        if(value.isEmpty)
                        {
                          return 'Address is Required';
                        }else{
                          return null;
                        }
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: SizedBox(
                      width: 200,
                      height: 44,
                      child: Material(
                        elevation: 40,
                        child: ElevatedButton(
                          onPressed: (){
                            var user = usernameController.text;
                            _message = "UserName : $user";

                          } , child: Text('Save', style: GoogleFonts.kufam(fontWeight: FontWeight.w300, fontSize: 22, color: Colors.black),),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showDatePicker(context: context, initialDate: DateTime.now().add(Duration(seconds: 1)), firstDate: DateTime.now(), lastDate: DateTime.now());
          },child: Icon(Icons.date_range, color: Colors.white,),
        ),

      ),
    );
  }
}


