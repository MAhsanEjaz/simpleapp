
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Cuperr extends StatefulWidget {
  const Cuperr({Key? key}) : super(key: key);

  @override
  _CuperrState createState() => _CuperrState();
}

class _CuperrState extends State<Cuperr> {

  var _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Different Task With Images'),
        centerTitle: true,
      ),
      body: Container(
        color: _isSwitched ? Colors.orangeAccent : Colors.white,
        child: Column(
          children: [

          SwitchListTile(
            dense: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            isThreeLine: true,
            tileColor: Colors.white,

            subtitle: Text('Color'),
            secondary: Icon(FontAwesomeIcons.image,color: Colors.amber,),
            title: Text('Text With Image'),
            value: _isSwitched,
            onChanged: (value){
            setState(() {
            _isSwitched = value;
            });
            },
            ),
            if (_isSwitched ==true)
              Container(
                width: 300,
                child: Column(
                  children: [
                    Card(
                      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9TQDpdFBUO1Thc93mV7m9qvGBp9Zk1IOmaQ&usqp=CAU'),
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),side: BorderSide(color: Colors.white)
                      ),
                    ),
                    Card(
                      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNaIQjz0vKADfp4AG6_IraHy5J2t2suFudSA&usqp=CAU'),
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),side: BorderSide(color: Colors.white)
                      ),
                    ),
                    Card(
                      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfUjn4ASkJzDxyFE4tjNkylSO5-C5y6FuDqej5YB93jXqImABL9SlQiEsmGE88M8Qpg7Y&usqp=CAU'),
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),side: BorderSide(color: Colors.white)
                      ),
                    ),
                  ],
                ),
                  ),

            if (_isSwitched == false)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'COVID-19 outbreak was first time experienced in the Wuhan City of China at the end of December 2019. Which'
                      ' spread rapidly in China and then worldwide in 209 countries of America, Europe, Australia and Asia including'
                      ' Pakistan. There are more than fifty thousand mortalities and one million plus people have been affected worldwide,'
                      ' while figure increases rapidly. Different steps have been taken worldwide for the control of COVID-19. Even with less '
                      'resources Pakistan also taken rigorous measures like designed special hospitals, Laboratories for testing, quarantine '
                      'faciliti'
                      'es, awareness campaign and lock down to control the spread of virus. We highlighted the efforts of government to combat this de'
                      'adly According to the Ministry of Health, government of Pakistan, there are total of 3277 confirmed positive cases in the country with 18 critical and 50 mortalities on Monday, April 6, 2020. The highest cases appeared in the Punjab province (1493) followed by Sindh (881), Khyber Pakhtunkhwa (405), Balochistan (191), Gilgit baltistan (210), Federal (82) and Azad Jammu & Kashmir have 15 confirmed cases. The results have heen shown in figure. To date, the highest number of mortalities occurred in Khyber pakhtunkhwa with 16, followed by Punjab (15), Sindh (15), Gilgit Baltistan (3), Balochistan (1). A total of 85 infected people have been recovered in Sindh province, followed by KP (30), Balochitsan (17), and Punjab (25) GB (9) and AJK have one recovery till date as summarized in Table 1. The mortality rate in Pakistan is 1.3% and recovery rate'
                      'pneumonia',style: GoogleFonts.arvo(fontSize: 15,fontWeight: FontWeight.bold),

                ),
              ),
          ],

        ),

      ),
    );
  }
}



