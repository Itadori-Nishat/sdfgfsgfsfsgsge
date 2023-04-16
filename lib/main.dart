import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shownamefrom_reg_to_profile/UserDataProvider.dart';
import 'package:shownamefrom_reg_to_profile/ui/homePage.dart';

void main() {
  runApp(ChangeNotifierProvider(

      create: (BuildContext context) => UserDataProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}
