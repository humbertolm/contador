import 'package:contador_doble/counterfull.dart';
import 'package:contador_doble/dropbox.dart';
import 'package:contador_doble/dropboxbutton.dart';

import 'package:contador_doble/icon_theme.dart';




import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  

  @override
  Widget build(BuildContext context) {
    TextEditingController textlist = TextEditingController(text: "");
    return Scaffold(
        appBar: AppBar(
          title: const Text('volleyball'),
          
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            

            
                
            Container(
              
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.indigo)),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              
              child: TextFormField(
                
                
                
                controller: textlist,
                maxLength: 25,
                autofocus: true,
                cursorColor: Colors.green,
              ),
            ),
            const SizedBox(height: 70,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){

                  list.add(textlist.text);
                  setState(() {
                    
                  });

                }, child: const Text('agregar')),
                const SizedBox(width: 100,),
                ElevatedButton(onPressed: (){

              list.clear();
              setState(() {
                
              });

            }, child: const Text('borrar')),
              ],
            ),
            
            
            OutlinedButton.icon(
                  icon: Icon(colorThemes.first),
                  onPressed: () {
                    setState(() {});
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const CounterFunctionsScreen()));
                  },
                  label: const Text('Ir A Contador'),
                ),
                const DropdownIconstheme()
                
            

            
          ],
        ),
        );
  }
}

