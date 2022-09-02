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
            Container(
              width: 20,
              child: ElevatedButton(
                child: const Text(
                  '-',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    //padding: const EdgeInsets.only(
                    // left: 21,right: 21,top:21,bottom: 21),
                    textStyle: const TextStyle(fontSize: 30)),
                onPressed: () {},
              ),
            ),
            Text(
              '1',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Container(
              width: 20,
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
          ]),
        ));
  }
}
