import 'package:flutter/material.dart';

class ChooseABurger extends StatelessWidget {
  const ChooseABurger({Key? key}) : super(key: key);

  Widget Cardfunc(String img, String caption) {
    return Container(
      height: 240,
      width: 240,
      child: Card(
        elevation: 19.0,
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Container(height: 190, width: 190, child: Image.asset(img)),
            Text(caption)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Brrrgrr"),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          child: Row(
            children: [
              Cardfunc(
                  'assets/images/big-chicken-cheese-burger-transparent-background_670625-142.png',
                  'Big Burger'),
              Cardfunc(
                  'assets/images/png-transparent-burger.png', 'Medium Burger'),
              Cardfunc(
                  'assets/images/png-transparent-hamburger-veggie-burger-take-out-fast-food-kebab-delicious-beef-burger-burger-with-lettuce-tomato-and-cheese-food-beef-recipe.png',
                  'Small Burger'),
              Cardfunc(
                  'assets/images/sandwich-hamburger-transparent-background_670625-13.png',
                  'Something Burger'),
            ],
          ),
        ));
  }
}
