import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  GlobalKey <FormState> formkey = GlobalKey<FormState>();

  void validate (){
    if (formkey.currentState!.validate()){
      print('Ok');
    }else{
      print('Error');
    }
  }


  String valueChoose = '';
   List listItem = [
     'Item 1' , 'Item 2', 'Item 3', 'Item 4'
   ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },icon: Icon(Icons.arrow_back_ios_outlined),
          ),
          title: Text('Register Form', style: GoogleFonts.aclonica(fontSize: 20),),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28.0),
                  child: Text('Registration Form', style: GoogleFonts.alegreya(fontSize: 22, color: Colors.red,
                      fontWeight: FontWeight.bold),),
                ),
                Form(
                  key: formkey,
                  child: Center(

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: TextFormField(
                            validator: (value){
                              if (value! .isEmpty){
                                return " Field is Required";
                              }
                            },
                            decoration: InputDecoration(
                              labelText: 'User Name', labelStyle: GoogleFonts.antic(),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: TextFormField(
                            validator: (value){
                              if (value! .isEmpty){
                                return " Field is Required";
                              }
                            },
                            decoration: InputDecoration(
                              labelText: 'Password', labelStyle: GoogleFonts.antic(),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: TextFormField(
                            validator: (value){
                              if (value! .isEmpty){
                                return " Field is Required";
                              }
                            },
                            decoration: InputDecoration(
                              labelText: 'Confirm Password', labelStyle: GoogleFonts.antic(),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: TextFormField(
                            validator: (value){
                              if (value! .isEmpty){
                                return " Field is Required";
                              }
                            },
                            decoration: InputDecoration(
                              labelText: 'Phone#', labelStyle: GoogleFonts.antic(),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: TextFormField(
                            validator: (value){
                              if (value! .isEmpty){
                                return " Field is Required";
                              }
                            },
                            decoration: InputDecoration(
                              labelText: 'Address', labelStyle: GoogleFonts.antic(),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),



                      ],
                    ),
                  ),
                ),

                SizedBox(
                  width: 200,
                  height: 44,
                  child: ElevatedButton(
                    onPressed: validate,child: Text('Register'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
