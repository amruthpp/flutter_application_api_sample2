import 'package:flutter/material.dart';
import 'package:flutter_application_api_sample2/controller/home_screen_controller.dart';
import 'package:flutter_application_api_sample2/view/home_screen/home_screen.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeScreenController(),)
      ],
      child: MaterialApp(
        home: HomeScreen(
          
        ),
      ),
    );
  }
}