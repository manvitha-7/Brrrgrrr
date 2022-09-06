import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'Choose A Burger.dart';
import 'Create Your Own Burger.dart';
import 'models/ChooseYourOwnBurgerModel.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final informa = Provider.of<Info>(context, listen: false);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Brrrgrrr',
            style: GoogleFonts.dancingScript(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          )),
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
              // SizedBox(
              //   height: 100,
              // ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 163, 23, 32),
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
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.0),
                      ),
//primary: Color.fromARGB(255, 70, 4, 14),
                      primary: Color.fromARGB(255, 163, 23, 32),
                      shadowColor: Color.fromARGB(255, 249, 246, 246),
                      elevation: 19,
                      padding: const EdgeInsets.only(
                          left: 21, right: 21, top: 21, bottom: 21),
                      textStyle: const TextStyle(fontSize: 30)),
                  onPressed: () {
                    informa.set(
                        'assets/images/CustomBurger.jpeg', 'Custom Burger', 90);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateYourOwnBurger()),
                    );
                  },
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
                ),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 163, 23, 32),
                    borderRadius: BorderRadius.circular(30),
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
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.0),
                      ),
                      primary: Color.fromARGB(255, 163, 23, 32),
                      //primary: Colors.transparent,
                      shadowColor: Color.fromARGB(255, 11, 11, 11),
                      elevation: 19,
                      padding: const EdgeInsets.only(
                          left: 21, right: 21, top: 21, bottom: 21),
                      textStyle: const TextStyle(fontSize: 30)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChooseABurger()),
                    );
                  },
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
                ),
              ),
            ],
          )),
    );
  }
}
