import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dta extends StatefulWidget {
  const Dta({Key? key}) : super(key: key);

  @override
  _DtaState createState() => _DtaState();
}

class _DtaState extends State<Dta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Table'),
      ),
      body: SafeArea(
        child: DataTable(
          columns: [
            DataColumn(label: Text('Name',style: GoogleFonts.autourOne(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            DataColumn(label: Text('Age',style: GoogleFonts.autourOne(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            DataColumn(label: Text('Role',style: GoogleFonts.autourOne(fontSize: 18,fontWeight: FontWeight.bold),),
            ),

          ],
          rows: [
            
            DataRow(cells:
            <DataCell>[
              DataCell(Text('Bilal')),
              DataCell(Text('19')),
              DataCell(Text('Student')),

            ]
            ),
            DataRow(cells:
            <DataCell>[
              DataCell(Text('Farhan')),
              DataCell(Text('19')),
              DataCell(Text('Teacher')),

            ]
            ),
            DataRow(cells:
            <DataCell>[
              DataCell(Text('Kamran')),
              DataCell(Text('19')),
              DataCell(Text('Student')),

            ]
            ),
            DataRow(cells:
            <DataCell>[
              DataCell(Text('Sohail')),
              DataCell(Text('19')),
              DataCell(Text('Student')),

            ]
            ),
            DataRow(cells:
            <DataCell>[
              DataCell(Text('Khan')),
              DataCell(Text('19')),
              DataCell(Text('Student')),

            ]
            ),
            DataRow(cells:
            <DataCell>[
              DataCell(Text('Sikandar')),
              DataCell(Text('19')),
              DataCell(Text('Student')),

            ]
            ),
            DataRow(cells:
            <DataCell>[
              DataCell(Text('Wassi')),
              DataCell(Text('19')),
              DataCell(Text('Student')),

            ]
            ),
            DataRow(cells:
            <DataCell>[
              DataCell(Text('Laraib')),
              DataCell(Text('19')),
              DataCell(Text('Student')),

            ]
            ),
            DataRow(cells:
            <DataCell>[
              DataCell(Text('Sufyan')),
              DataCell(Text('19')),
              DataCell(Text('Student')),

            ]
            ),
            DataRow(cells:
            <DataCell>[
              DataCell(Text('Ali ')),
              DataCell(Text('19')),
              DataCell(Text('Student')),

            ]
            ),

          ],
        ),
      ),
    );
  }
}
