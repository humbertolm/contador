import 'package:contador_doble/Providers/contador_punto.dart';
import 'package:contador_doble/counter_screen.dart';








import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => counterprovider(),
          
        ),
        
        
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterScreen(),
      ),
    );
  }
}
