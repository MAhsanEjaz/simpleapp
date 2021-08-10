
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simpleapp/register.dart';
import 'package:email_auth/email_auth.dart';

// import 'Constants.dart';




class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);




  @override
  _loginState createState() => _loginState();
}

var  DarktheameEnable;

class _loginState extends State<login> {

  GlobalKey <FormState> formkeys = GlobalKey<FormState>();
  void validate (){
    if (formkeys.currentState!.validate()){
      print('Ok');
    }else{
      print('Error');
    }
  }

  TextEditingController userControll = TextEditingController();
  TextEditingController passControll = TextEditingController();

  String _message = '';

  void sendOTP()async{
    EmailAuth.sessionName = "Ahsan App";
    var res = await EmailAuth.sendOtp(receiverMail: userControll.text);
    if (res){
      print ('Otp send');
    }
  }

  void verifyOTP ()async{
    var res = EmailAuth.validate(receiverMail: userControll.text, userOTP: passControll.text);
    if (res){
      print ('OTp Verified');
    }else{
      print ('invalid Otp');
    }
  }

  bool DarktheameEnable = false;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DarktheameEnable?ThemeData.dark(): ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            
            PopupMenuButton<int>(
              itemBuilder: (context) =>[
                PopupMenuItem(child: Text('Logout', style: GoogleFonts.acme(fontWeight: FontWeight.bold, color: Colors.red),), )

            ],
            )
            
          ],
          elevation: 0,
          title: Text('Login Form', style: GoogleFonts.antic(fontWeight: FontWeight.w200),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Text('Login Form', style: GoogleFonts.aladin(fontSize: 30, color: Colors.red, fontWeight: FontWeight.w200),),
                ),
                Form(
                  key: formkeys,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: userControll,

                          validator: (value){
                            if (value! .isEmpty){
                              return " Field is Required";
                            }
                          },
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.email),
                            labelText: 'User Email', labelStyle: GoogleFonts.kufam(),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TextFormField(
                          obscureText: true,
                          controller: passControll,
                          validator: (value){
                            if (value! .isEmpty){
                              return " Field is Required";
                            }
                          },
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.password),
                              labelText: 'Password', labelStyle: GoogleFonts.kufam(),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                          ),
                        ),
                      ),

                      TextButton(onPressed: (){
                        var user = userControll.text;
                        var pass = passControll.text;
                        setState(() {
                          _message = "UserName : $user\nPassword :$pass " ;
                        });
                      }, child: Text('Print Data')),
                      

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        child: SizedBox(
                          width: 150,
                          height: 44,
                          child: ElevatedButton(
                            onPressed: validate ,child: Text('Login', style: GoogleFonts.aclonica(fontWeight: FontWeight.w300,fontSize: 20, color: Colors.white),),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.black)
                            ),
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: const <TextSpan>[
                            TextSpan(
                              text: 'If not Register', style: TextStyle(color: Colors.black),

                            ),
                            TextSpan(
                              text: ' First Register', style: TextStyle(color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold),

                            ),
                          ]
                        ),
                      ),

                      ElevatedButton(onPressed: ()=>sendOTP(), child: Text('send')),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        child: OutlinedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                        }, child: Text('Register', style: GoogleFonts.acme(),)),
                      ),

                    SizedBox(
                      width: 100,
                      height: 44,
                      child: ElevatedButton(
                        onPressed: ()=>verifyOTP(),child: Text('Verify', style: GoogleFonts.antic(fontWeight: FontWeight.bold),),
                      ),
                    ),

                    SizedBox(
                      width: 250,
                      height: 100,
                      child: Card(
                        shadowColor: Colors.deepOrange,
                        child:   Text(_message),

                      ),
                    )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName: Text('Account'), accountEmail: Text('Verified'),
              currentAccountPicture: CircleAvatar(
                child: Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fpngtree.com%2Fso%2Fsmall-avatar&psig=AOvVaw2oUIYhUW2zvduZoTWQULq_&ust=1626605282092000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCMDP5YX36fECFQAAAAAdAAAAABAD',fit: BoxFit.fill,),
              ),
              ),
              ListTile(
                leading: Icon(Icons.theater_comedy),
                title: Text('App Theme', style: GoogleFonts.kufam(fontWeight: FontWeight.w300),
                ),
                trailing: CupertinoSwitch(
                  value: DarktheameEnable,
                  onChanged: (changeTheme){
                    setState(() {
                      DarktheameEnable = changeTheme;
                    });


                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
