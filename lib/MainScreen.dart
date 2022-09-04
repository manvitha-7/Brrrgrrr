import 'package:flutter/material.dart';
import 'Choose A Burger.dart';
import 'Create Your Own Burger.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        title: const Text("Brrrgrr"),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        ],
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
              ),
              Container(
                width: 400,
                child: ElevatedButton(
                  child: const Text(
                    'Create Your Own Burger',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      padding: const EdgeInsets.only(
                          left: 21, right: 21, top: 21, bottom: 21),
                      textStyle: const TextStyle(fontSize: 30)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateYourOwnBurger()),
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 400,
                child: ElevatedButton(
                  child: const Text(
                    'Choose A Burger',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      padding: const EdgeInsets.only(
                          left: 21, right: 21, top: 21, bottom: 21),
                      textStyle: const TextStyle(fontSize: 30)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChooseABurger()),
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
