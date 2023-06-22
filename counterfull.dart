import 'package:contador_doble/Providers/contador_punto.dart';
import 'package:contador_doble/dropbox.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: const Text('volleyball'),
          
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                DropdownButtonExample(),
                SizedBox(height: 50,width: 20,),
                DropdownButtonExample(),
              ],
            ),const SizedBox(height: 50,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(context.watch<counterprovider>().counter1.toString(),
                    style: const TextStyle(
                        fontSize: 140, fontWeight: FontWeight.w100)),
                const SizedBox(width: 50,),
                Text(context.watch<counterprovider>().counter2.toString(),
                    style: const TextStyle(
                        fontSize: 140, fontWeight: FontWeight.w100)),
              ],
            ),
            const SizedBox(height: 100,),

            Row(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  
                  child: ElevatedButton(
                    onPressed: (){
                    
                    context.read<counterprovider>().increment1();
                    setState(() {
                      
                    });
                  }, child: const Icon(Icons.sports_volleyball,size: 100,)),
                ),
                Center(
                  child: ElevatedButton(onPressed: (){
                    context.read<counterprovider>().increment2();
                    setState(() {
                      
                    });
                  }, 
                  
                  child: const Icon(Icons.sports_volleyball,size: 100,)),
                ),
              ],
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  
                  child: ElevatedButton(
                    onPressed: (){
                    
                    context.read<counterprovider>().decrement2();
                    setState(() {
                      
                    });
                  }, child: const Icon(Icons.sports_volleyball,size: 100,)),
                ),
                Center(
                  child: ElevatedButton(onPressed: (){
                    context.read<counterprovider>().decrement1();
                    setState(() {
                      
                    });
                  }, 
                  
                  child: const Icon(Icons.sports_volleyball,size: 100,)),
                ),
                
              ],
            ),

            
            
            

            
          ],
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                context.read<counterprovider>().refresh();
                setState(() {});
              },
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 5,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}