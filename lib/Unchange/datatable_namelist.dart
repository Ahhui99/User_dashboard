import 'package:flutter/material.dart';

class AttendenceList extends StatelessWidget {
  const AttendenceList({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      
      dividerThickness: 3.0,
      headingTextStyle: TextStyle(fontSize: 15),
      decoration: BoxDecoration(
        color: Color.fromARGB(203, 223, 223, 223),
      ),
      border: TableBorder.all(),
      columns: const <DataColumn>[
        DataColumn(
          label: Text('Num'),
        ),
        DataColumn(
          label: Text('Name'),
        ),
        DataColumn(
          label: Text('User ID'),
        ),
        DataColumn(
          label: Text('E-mail'),
        ),
        DataColumn(
          label: Text('Date Registered'),
        ),
        DataColumn(
          label: Text('Attendence'),
        ),
      ],
      rows: const <DataRow>[
        DataRow(cells: <DataCell>[
          DataCell(Text('1')),
          DataCell(Text('Dharwisyah Azman')),
          DataCell(Text('Wisyah2345')),
          DataCell(Text('wisyah@gmail.com')),
          DataCell(Text('Nov 8 2022')),
          DataCell(Text('Join')),
        ]),
         DataRow(cells: <DataCell>[
          DataCell(Text('2')),
          DataCell(Text('Chew Li Hui')),
          DataCell(Text('lihui9874')),
          DataCell(Text('c_lihui@gmail.com')),
          DataCell(Text('Nov 7 2022')),
          DataCell(Text('Joined')),
      ]),
      ]
    );
  }
}
