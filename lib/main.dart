import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MainScreen.dart';
import 'models/ChooseYourOwnBurgerModel.dart';

void main() {
  final info = Info();
  runApp(
    ChangeNotifierProvider(
      create: (context) => info,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
