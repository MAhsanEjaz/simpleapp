import 'package:flutter/material.dart';

class controll extends StatefulWidget {
  const controll({Key? key}) : super(key: key);

  @override
  _controllState createState() => _controllState();
}

class _controllState extends State<controll> {

  TextEditingController userController = TextEditingController();

  GlobalKey <FormState> formkey = GlobalKey<FormState>();
  void validate (){
    if (formkey.currentState!.validate()){
      print ("ok");
    }
  }

  String _message = '';

  String selectoption ='';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controller'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: TextField(
                  textCapitalization: TextCapitalization.sentences,
                  controller: userController,
                  decoration: InputDecoration(
                    labelText: 'UserName',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                    )
                  ),

                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              var usr = userController.text;
              setState(() {
                _message = "User Name : $usr";
              });
            }, child: Text('Save')),
            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Text(_message),
            ),

            DropdownButton <String> (
              isExpanded: true,
              hint: Text(selectoption),
              items: <String>['Male' , 'Female'].map((String value){
                return DropdownMenuItem <String>(
                  onTap: (){
                    setState(() {
                      selectoption = value;
                    });
                  },
                  value: value,
                  child: new Text(value),
                );

              }).toList(),
              onChanged: (_){},
            ),

          ],
        ),
      ),
    );
  }
}
