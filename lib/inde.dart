import 'package:flutter/material.dart';

class inddex extends StatefulWidget {
  const inddex({Key? key}) : super(key: key);

  @override
  _inddexState createState() => _inddexState();
}

class _inddexState extends State<inddex> {

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Index'),
        ),
        body: IndexedStack(
          index: index,
          children: [
            Center(
              child: Column(
                children: [
                  ElevatedButton(onPressed: (){
                    index = index;
                    showModalBottomSheet(context: context, builder: (context){
                      return Container(
                        height: 200,
                        child: Column(
                          children: [
                            TextButton(onPressed: (){
                              setState(() {
                                showModalBottomSheet(context: context, builder: (context){
                                  return Container(
                                    color: Colors.orange,
                                    child: TextButton(
                                      onPressed: (){
                                        setState(() {
                                          index = 0;
                                          
                                        });
                                      },child: Text('Back'),
                                    ),
                                    height: 200,
                                  );
                                });
                                index = 2;
                              });

                            }, child: Text('First Screen')),
                            TextButton(onPressed: (){
                              setState(() {
                                index = 3;
                                showModalBottomSheet(context: context, builder: (context){
                                  return Container(
                                    color: Colors.yellow,
                                    height: 200,
                                    child: TextButton(
                                      onPressed: (){
                                        setState(() {
                                          index =  0 ;

                                        });
                                      },child: Text('Back'),
                                    )
                                  );
                                });

                              });

                            }, child: Text('Second Screen')),
                            TextButton(onPressed: (){
                              setState(() {
                                index = 1;
                                showModalBottomSheet(context: context, builder: (context){
                                  return Container(
                                      color: Colors.lightGreen,
                                      height: 200,
                                      child: TextButton(
                                        onPressed: (){
                                          setState(() {
                                            index = 0;

                                          });
                                        },child: Text('Back'),
                                      )
                                  );
                                });
                              });

                            }, child: Text('Third Screen')),
                          ],
                        ),
                      );
                    });
                  }, child: Text('Bottom Sheet'))
                ],
              ),
            ),

          ],
        )
      ),
    );
  }
}
