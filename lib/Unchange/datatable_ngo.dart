import 'package:flutter/material.dart';

class ngoList extends StatefulWidget {
  const ngoList({super.key});

  @override
  State<ngoList> createState() => _ngoListState();
}

class _ngoListState extends State<ngoList> {
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
        DataColumn(label: Text('Registration No.')),
        DataColumn(label: Text('NGOs')),
        DataColumn(label: Text('Phone No.')),
        DataColumn(label: Text('Address')),
        DataColumn(label: Text('E-mail')),
        DataColumn(label: Text('Donation (RM)')),
      ],
      rows: const <DataRow>[
        DataRow(cells: <DataCell>[
          DataCell(Text('#CM9801')),
          DataCell(Text('Epic Homes')),
          DataCell(Text('03-7455 0851')),
          DataCell(Text('O-G-48 Block O, Jalan PJU 1A/1 Taipan 2 Ara Damansara, Petaling Jaya, Malaysia')),
          DataCell(Text('info@epichome.org')),
          DataCell(Text('0.00')),
        ])
      ],
    );
  }
}