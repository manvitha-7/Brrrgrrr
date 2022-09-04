import 'package:flutter/material.dart';

class CreateYourOwnBurger extends StatelessWidget {
  const CreateYourOwnBurger({Key? key}) : super(key: key);
  Widget Ing(String ingredient) {
    return Container(
        //alignment: Alignment.centerLeft,
        child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ingredient,
          style: TextStyle(
            color: Color.fromARGB(255, 244, 242, 242),
            fontSize: 36,
          ),
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
                    primary: Color.fromARGB(255, 160, 127, 204),
                    padding: const EdgeInsets.only(
                        left: 0, right: 0, top: 0, bottom: 0),
                    textStyle: const TextStyle(fontSize: 10)),
                onPressed: () {},
                child: Center(
                  child: Text(
                    '-',
                    style: TextStyle(
                      color: Color.fromARGB(255, 242, 238, 238),
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 30,
              height: 30,
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(
                    color: Color.fromARGB(255, 242, 240, 240),
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Container(
              width: 30,
              height: 30,
              child: ElevatedButton(
                child: const Text(
                  '+',
                  style: TextStyle(
                    color: Color.fromARGB(255, 243, 238, 238),
                    fontSize: 26,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 160, 127, 204),
                    padding: const EdgeInsets.only(
                        left: 0, right: 0, top: 0, bottom: 0),
                    textStyle: const TextStyle(fontSize: 30)),
                onPressed: (() {}),
              ),
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
    return Scaffold(
        appBar: AppBar(
          title: Text("Brrrgrrr"),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/brrgrr.jfif"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /* Container(
                  height: 460.0,
                  width: 460.0,
                  child: Image.asset(
                    'assets/images/big-chicken-cheese-burger-transparent-background_670625-142.png',
                    fit: BoxFit.cover,
                  ),
                ),*/
                    Column(
                      children: [
                        Text(
                          "Chicken Burger",
                          style: TextStyle(
                            color: Color.fromARGB(255, 244, 243, 243),
                            fontSize: 80,
                          ),
                        ),
                        Text(
                          "170",
                          style: TextStyle(
                            color: Color.fromARGB(255, 242, 241, 241),
                            fontSize: 80,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Ing("Cheese"),
                    Ing("Tomatoes"),
                    Ing("Onions"),
                    Ing("Patty"),
                    Ing("Lettuce"),
                  ],
                ),
              ]),
        ));
  }
}
