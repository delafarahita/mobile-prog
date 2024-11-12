import 'package:flutter/material.dart';
import 'provider/plan_provider.dart'; 
import 'views/plan_creator_screen.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanProvider(  
      child: MaterialApp(
        title: 'Master Plan App',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: PlanCreatorScreen(), 
      ),
    );
  }
}
