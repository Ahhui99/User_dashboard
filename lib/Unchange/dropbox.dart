import 'package:flutter/material.dart';

var _activities = ['Run', 'Game Booth', 'Food Booth', 'Lucky Draw'];
var _events = ['Dell Charity Engage (DCE)', 'other'];
String? selectedVal1, selectedVal2;

class Dropdown2 extends StatelessWidget {
  const Dropdown2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 200.0,
        height: 50.0,
        child: DropdownButton(
          elevation: 16,
          items: _events.map((e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          }).toList(),
          onChanged: ((value) {
            selectedVal2 = value;
          }),
          hint: Text('Select Event'),
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.lightBlue,
            size: 45.0,
          ),
          dropdownColor: Colors.white,
        ),
      ),
    );
  }
}

class Dropdown1 extends StatelessWidget {
  const Dropdown1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 200.0,
        height: 50.0,
        child: DropdownButton(
          items: _activities.map((e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          }).toList(),
          value: selectedVal1,
          onChanged: ((value) {
            selectedVal1 = value as String;
          }),
          hint: Text('Select Activity'),
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.lightBlue,
            size: 45.0,
          ),
          dropdownColor: Colors.white,
        ),
      ),
    );
  }
}

class MyDropbox extends StatefulWidget {
  const MyDropbox({super.key});

  @override
  State<MyDropbox> createState() => _MyDropboxState();
}

class _MyDropboxState extends State<MyDropbox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Dropdown1(),
        ),
        Spacer(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Dropdown2(),
          ),
        )
      ],
    );
  }
}
