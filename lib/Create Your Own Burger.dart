import 'package:flutter/material.dart';

class CreateYourOwnBurger extends StatelessWidget {
  const CreateYourOwnBurger({Key? key}) : super(key: key);
  Widget Ing(String ingredient) {
    return Container(
        child: Column(
      children: [
        Text(ingredient),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Container(
              width: 30,
              height: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    //padding: const EdgeInsets.only(
                    // left: 21,right: 21,top:21,bottom: 21),
                    textStyle: const TextStyle(fontSize: 30)),
                onPressed: () {},
                child: Center(
                  child: Text(
                    '-',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
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
                    color: Colors.black,
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
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    //padding: const EdgeInsets.only(
                    // left: 21,right: 21,top:21,bottom: 21),
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
          child: Column(children: [
            Row(
              children: [
                Container(
                  height: 460.0,
                  width: 460.0,
                  child: Image.asset(
                    'assets/images/big-chicken-cheese-burger-transparent-background_670625-142.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Chicken Burger",
                      style: TextStyle(
                        color: Color.fromARGB(255, 12, 12, 12),
                        fontSize: 80,
                      ),
                    ),
                    Text(
                      "170",
                      style: TextStyle(
                        color: Color.fromARGB(255, 12, 12, 12),
                        fontSize: 80,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Ing("Cheese"),
                Ing("Tomatoes"),
                Ing("Onions"),
                Ing("Patty"),
                Ing("Lettuce"),
              ],
            )
          ]),
        ));
  }
}
