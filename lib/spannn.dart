// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
//
// class spann extends StatefulWidget {
//   const spann({Key? key}) : super(key: key);
//
//   @override
//   _spannState createState() => _spannState();
// }
//
// class _spannState extends State<spann> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(''),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//         RichText(
//         text: new TextSpan(text: 'Non touchable. ', children: [
//           new TextSpan(
//             text: 'Tap here.', style: TextStyle(color: Colors.black),
//             recognizer: new TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
//           )
//         ]),
//       ),
//             Column(
//
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(padding: EdgeInsets.all(12)),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text('What is your Name'),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.(8.0),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       filled: true,
//                         fillColor: Colors.white,
//                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(9))
//                     ),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//
// Column(
// children: [
// Padding(
// padding: const EdgeInsets.all(14.0),
// child: Padding(
// padding: const EdgeInsets.only(left: 10.0),
// child: Text(
// 'Who is Point of contact at your charity?'),
// ),
// ),
// Center(
// child: Container(
// width: 310,
// height: 45,
// color: Colors.white,
// child: Container(
// decoration: BoxDecoration(border: Border.all(color: Colors.black54,),borderRadius: BorderRadius.circular(4)),
// child: DropdownButton<String>(
// underline: SizedBox(),
// isExpanded: true,
// icon: Icon(CupertinoIcons.chevron_down,size: 15,),
// style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
// hint: Text(selectedOption),
// items: <String>['   Male', '   Female'].map((
// String value) {
// return DropdownMenuItem<String>(
// onTap: () {
// setState(() {
// selectedOption = value;
// });
// },
// value: value,
// child: new Text(value),
// );
// }).toList(),
// onChanged: (_) {},
// ),
// ),
// ),
// ),
// ],
// ),
//
//
//
//
// Padding(
// padding: const EdgeInsets.all(14.0),
// child: Padding(
// padding: const EdgeInsets.only(left: 10.0),
// child: Text('Whats there email Address?'),
// ),
// ),
// Center(
// child: Container(
// width: 310,
// height: 45,
// color: Colors.white,
// child: TextField(
// textAlign: TextAlign.left,
// keyboardType: TextInputType.emailAddress,
// textCapitalization: TextCapitalization.characters,
// decoration: InputDecoration(
// border: OutlineInputBorder()
// ),
//
// ),
// ),
// ),
//
// Padding(
// padding: const EdgeInsets.all(14.0),
// child: Padding(
// padding: const EdgeInsets.only(left: 10.0),
// child: Text("What's their phone#?"),
// ),
// ),
//
// Center(
// child: Container(
// width: 310,
// height: 45,
// color: Colors.white,
// child: TextField(
// textAlign: TextAlign.left,
// keyboardAppearance: Brightness.dark,
// keyboardType: TextInputType.phone,
// textCapitalization: TextCapitalization.characters,
// decoration: InputDecoration(
// border: OutlineInputBorder()
// ),
//
// ),
// ),
// ),
//
//
// Padding(
// padding: const EdgeInsets.all(14.0),
// child: Padding(
// padding: const EdgeInsets.only(left: 10.0),
// child: Text(
// "What's their position & title at you charity? "),
// ),
// ),
//
// Center(
// child: Container(
// width: 310,
// height: 45,
// color: Colors.white,
// child: TextField(
// textAlign: TextAlign.left,
// keyboardType: TextInputType.text,
// textCapitalization: TextCapitalization.characters,
// decoration: InputDecoration(
// border: OutlineInputBorder()
// ),
//
// ),
// ),
// ),
