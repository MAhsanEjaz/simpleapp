import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestApp extends StatefulWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  _TestAppState createState() => _TestAppState();
}
GlobalKey<FormState> formkey = GlobalKey<FormState>();
void validate (){
  if(formkey.currentState!.validate()){
    print("Ok");
  }else{
    print('Error');
  }
}

class _TestAppState extends State<TestApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black,),onPressed: (){},),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Test Form',style: GoogleFonts.alegreyaSans(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'User Name', labelStyle: GoogleFonts.dancingScript(fontSize: 22, color: Colors.orange),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(17))
                      ),
                      validator: (value){
                        if (value!.isEmpty){
                          return 'Text Field is Required At least 4 Characters'
                              ;
                        }else{
                          return null;
                        }
                      }
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,

                    decoration: InputDecoration(
                      labelText: 'Phone # ',labelStyle: GoogleFonts.alegreyaSans(color: Colors.orange),
                      hintText: '0321#####',

                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(17))
                    ),

                    validator: (values){
                      if (values!.isEmpty){
                        return 'Password is Required At least 4 Characters'
                          ;
                      }else{
                        return null;
                      }
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                          labelText: 'Password ',labelStyle: GoogleFonts.alegreyaSans(color: Colors.orange),
                          hintText: '123456',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(17))
                      ),
                      validator: (values){
                        if (values!.isEmpty){
                          return 'Password is Required';
                        }else{
                          return null;
                        }
                      },
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(

                    decoration: InputDecoration(
                        labelText: 'Confirm Password ',labelStyle: GoogleFonts.alegreyaSans(color: Colors.orange),
                        hintText: '123456',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(17))
                    ),
                    validator: (values){
                      if (values!.isEmpty){
                        return 'Confirm Password is Required';
                      }else{
                        return null;
                      }
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                          labelText: 'Address',labelStyle: GoogleFonts.alegreyaSans(color: Colors.orange),
                          hintText: 'Lahore Cant',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(17))
                      ),
                      validator: (values){
                        if (values!.isEmpty){
                          return 'Address is Required';
                        }else{
                          return null;
                        }
                      },
                    ),
                  ),
                ),

                Material(
                  borderRadius: BorderRadius.circular(22),
                  elevation: 18,
                  child: SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(

                      onPressed: validate ,child: Text('Save', style: GoogleFonts.alegreya(fontSize: 20),),
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
