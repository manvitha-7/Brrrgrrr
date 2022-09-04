import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:test/Success.dart';

import 'models/ChooseYourOwnBurgerModel.dart';

class CreateYourOwnBurger extends StatefulWidget {
  const CreateYourOwnBurger({Key? key}) : super(key: key);

  @override
  State<CreateYourOwnBurger> createState() => _CreateYourOwnBurgerState();
}

class _CreateYourOwnBurgerState extends State<CreateYourOwnBurger> {
  int patty = 1;
  int cheese = 1;
  int lettuce = 1;
  int tomato = 1;
  int onion = 1;
  int counter = 0;

  void add(int ingredient) {
    setState(() {
      if (ingredient == 1) {
        patty++;
      } else if (ingredient == 2) {
        cheese++;
      } else if (ingredient == 3) {
        lettuce++;
      } else if (ingredient == 4) {
        tomato++;
      } else if (ingredient == 5) {
        onion++;
      }
    });
  }

  void update(int ingredient) {
    setState(() {
      if (patty > 1) {
        patty--;
      } else if (ingredient == 2) {
        if (cheese > 1) {
          cheese--;
        }
      } else if (ingredient == 3) {
        if (lettuce > 1) {
          lettuce--;
        }
      } else if (ingredient == 4) {
        if (tomato > 1) {
          tomato--;
        }
      } else if (ingredient == 5) {
        if (onion > 1) {
          onion--;
        }
      }
    });
  }

  int returnTheValue(int value) {
    if (value == 1) {
      return patty;
    } else if (value == 2) {
      return cheese;
    } else if (value == 3) {
      return lettuce;
    } else if (value == 4) {
      return tomato;
    } else if (value == 5) {
      return onion;
    }
    return 0;
  }

  Widget Ing(String ingredient, int value, Info informa) {
    return Container(
        //alignment: Alignment.centerLeft,
        child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ingredient,
          style: GoogleFonts.dancingScript(
              color: Colors.white, fontSize: 49, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 10,
            ),
            Container(
              width: 30,
              height: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: const EdgeInsets.only(
                        left: 0, right: 0, top: 0, bottom: 0),
                    textStyle: const TextStyle(fontSize: 10),
                    elevation: 4,
                    shadowColor: Colors.white),
                onPressed: () {
                  update(value);
                  if (counter > 0) {
                    informa.remove(10);
                    setState(() {
                      counter--;
                    });
                  }
                },
                child: Center(
                  child: Text(
                    '-',
                    style: TextStyle(
                        color: Color.fromARGB(255, 163, 23, 32),
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              width: 40,
              height: 40,
              child: Center(
                child: Text(
                  '${returnTheValue(value)}',
                  style: GoogleFonts.dancingScript(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: 30,
              height: 30,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, top: 0, bottom: 0),
                      textStyle: const TextStyle(fontSize: 30),
                      elevation: 4,
                      shadowColor: Colors.white),
                  onPressed: (() {
                    add(value);
                    informa.add(10);
                    setState(() {
                      counter++;
                    });
                    print(counter);
                  }),
                  child: Text(
                    '+',
                    style: TextStyle(
                        color: Color.fromARGB(255, 163, 23, 32),
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    final info = Provider.of<Info>(context);

    final informa = Provider.of<Info>(context, listen: false);

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                xs: 12,
                md: 6,
                lg: 8,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(info.returnImage()),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SizedBox(),
                ),
              ),
              ResponsiveGridCol(
                xs: 12,
                md: 6,
                lg: 4,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 163, 23, 32),
                  child: Column(
                    children: [
                      SizedBox(height: 70),
                      Text(
                        info.returnName(),
                        style: GoogleFonts.dancingScript(
                            color: Colors.white,
                            fontSize: 91,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${info.returnPrice()}',
                        style: GoogleFonts.dancingScript(
                            color: Colors.white,
                            fontSize: 79,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 40),
                      Ing('Patty', 1, informa),
                      Ing('Cheese', 2, informa),
                      Ing('Lettuce', 3, informa),
                      Ing('Tomato', 4, informa),
                      Ing('Onion', 5, informa),
                      SizedBox(height: 40),
                      Container(
                        width: 300,
                        height: 70,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                padding: const EdgeInsets.only(
                                    left: 0, right: 0, top: 0, bottom: 0),
                                textStyle: const TextStyle(fontSize: 30),
                                elevation: 4,
                                shadowColor: Colors.white),
                            onPressed: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Success()));
                            }),
                            child: Text(
                              'Place Order',
                              style: GoogleFonts.dancingScript(
                                  color: Color.fromARGB(255, 163, 23, 32),
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
        // Container(
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage("assets/images/brrgrr.jfif"),
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        //   child: Column(
        //       //mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Row(
        //           //mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             /* Container(
        //           height: 460.0,
        //           width: 460.0,
        //           child: Image.asset(
        //             'assets/images/big-chicken-cheese-burger-transparent-background_670625-142.png',
        //             fit: BoxFit.cover,
        //           ),
        //         ),*/
        //             Column(
        //               children: [
        //                 Text(
        //                   "Chicken Burger",
        //                   style: TextStyle(
        //                     color: Color.fromARGB(255, 244, 243, 243),
        //                     fontSize: 80,
        //                   ),
        //                 ),
        //                 Text(
        //                   "170",
        //                   style: TextStyle(
        //                     color: Color.fromARGB(255, 242, 241, 241),
        //                     fontSize: 80,
        //                   ),
        //                 ),
        //               ],
        //             )
        //           ],
        //         ),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.end,
        //           children: [
        //             Column(
        //               //mainAxisAlignment: MainAxisAlignment.center,
        //               children: [
        //                 Ing("Cheese"),
        //                 Ing("Tomatoes"),
        //                 Ing("Onions"),
        //                 Ing("Patty"),
        //                 Ing("Lettuce"),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ]),
        // )
        );
  }
}
