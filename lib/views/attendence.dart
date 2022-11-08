import 'package:dashboard/Unchange/appBar_user.dart';
import 'package:dashboard/Unchange/datatable_namelist.dart';
import 'package:dashboard/Unchange/sideBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:hexcolor/hexcolor.dart';
import '../Unchange/constant.dart';
import '../Unchange/dropbox.dart';

class Attendence extends StatelessWidget {
  const Attendence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: HexColor('FEFBF6'),
      appBar: myappBar,
      sideBar: mysideBar,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Attendence',
              style: titleStyle,
            ),
          ),
          MyDropbox(),
          AttendenceList(),
        ],
      )),
    );
  }
}
