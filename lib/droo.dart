import 'package:flutter/material.dart';
import 'dart:core';
import 'dart:ui';
import 'dart:developer';

class DropDownn extends StatefulWidget {
  @override
  _DropDownnState createState() => _DropDownnState();
}

class _DropDownnState extends State<DropDownn> {
  String _value = '';
  String selectedOption = 'Select one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
    child: DropdownButton<String>(
      isExpanded: true,
      hint: Text(selectedOption),
      items: <String>['Male', 'Female'].map((String value) {
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

    //       child: DropdownButton(
    //           isExpanded: true,
    //           //to control text overflow
    //           underline: SizedBox(),
    //           hint: Text(selectedOption),
    //           value: _value,
    //           items: [
    //             DropdownMenuItem(
    //               child: Text(
    //                 "First Item" * 5, maxLines: 1,
    //                 // overflow: TextOverflow.ellipsis,
    //                 // softWrap: false,
    //               ),
    //               value: 1,
    //             ),
    //             DropdownMenuItem(
    //               child: Text(
    //                 "Second Item" * 5,
    //                 maxLines: 1,
    //                 // overflow: TextOverflow.ellipsis,
    //                 // softWrap: false,
    //               ),
    //               value: 2,
    //             ),
    //             DropdownMenuItem(
    //                 child: Text(
    //                   "Third Item" * 5, maxLines: 1,
    //                   // overflow: TextOverflow.ellipsis,
    //                   // softWrap: false,
    //                 ),
    //                 value: 3),
    //             DropdownMenuItem(
    //                 child: Text(
    //                   "Fourth Item" * 5, maxLines: 1,
    //                   // overflow: TextOverflow.ellipsis,
    //                   // softWrap: false,
    //                 ),
    //                 value: 4)
    //           ],
    //           onChanged: (value){
    //             setState(() {
    //               selectedOption = value.toString();
    //               _value = value.toString();
    //             });
    // },
    //     ),
      ),
    ),
        );
  }
}