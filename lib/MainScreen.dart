import 'package:flutter/material.dart';
import 'Choose A Burger.dart';
import 'Create Your Own Burger.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        title: const Text("Brrrgrr"),
        backgroundColor: Colors.purple,
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/wallpaper.jfif"),
              fit: BoxFit.cover,
            ),
          ),
          //Color.fromARGB(255, 144, 143, 140),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 70, 4, 14),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 227, 225, 225),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: Offset(12, 12),
                      ),
                      BoxShadow(
                        color: Color.fromARGB(255, 8, 8, 8),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(-6, -6),
                      ),
                    ]),
                width: 400,
                height: 70,
                child: ElevatedButton(
                  child: const Text(
                    'Create Your Own Burger',
                    style: TextStyle(
                      color: Color.fromARGB(255, 243, 242, 242),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      shadows: [
                        Shadow(
                          blurRadius: 8.0,
                          color: Color.fromARGB(255, 16, 15, 15),
                          offset: Offset(5.0, 6.0),
                        ),
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
//primary: Color.fromARGB(255, 70, 4, 14),
                      primary: Color.fromARGB(255, 70, 4, 14),
                      shadowColor: Color.fromARGB(255, 249, 246, 246),
                      elevation: 20,
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
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 70, 4, 14),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 232, 229, 229),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: Offset(12, 12),
                      ),
                      BoxShadow(
                        color: Color.fromARGB(255, 14, 13, 13),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(-6, -6),
                      ),
                    ]),
                width: 400,
                height: 70,
                child: ElevatedButton(
                  child: const Text(
                    'Choose A Burger',
                    style: TextStyle(
                      color: Color.fromARGB(255, 245, 243, 243),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      shadows: [
                        Shadow(
                          blurRadius: 8.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                          offset: Offset(7.0, 6.0),
                        ),
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 70, 4, 14),
                      //primary: Colors.transparent,
                      shadowColor: Color.fromARGB(255, 11, 11, 11),
                      elevation: 20,
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
