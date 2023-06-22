
import 'package:flutter/material.dart';

/// Flutter code sample for [DropdownButton].

List<String> listnum = <String>[
  'football',
  'baseball',
  'soccer',
  'basketball',
  'volleyball'
  
];

class DropdownIconstheme extends StatefulWidget {
  const DropdownIconstheme({super.key});

  @override
  State<DropdownIconstheme> createState() => _DropdownIconsthemeState();
}

class _DropdownIconsthemeState extends State<DropdownIconstheme> {
  String dropdownValue = listnum.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.grey,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          
        });
      },
      items: listnum.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
