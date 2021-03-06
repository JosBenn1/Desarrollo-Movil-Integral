import 'package:flutter/material.dart';
import 'package:segunda_oportunidad/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Segunda Oportunidad',
      initialRoute: 'Login',
      routes:{
        'login': ( _ ) => LoginScreen(),
        'home': ( _ ) => HomeScreen(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300]
      ),
    );
  }
}
