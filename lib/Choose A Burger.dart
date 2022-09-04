import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/Create%20Your%20Own%20Burger.dart';
import 'models/ChooseYourOwnBurgerModel.dart';

class ChooseABurger extends StatefulWidget {
  const ChooseABurger({Key? key}) : super(key: key);

  @override
  State<ChooseABurger> createState() => _ChooseABurgerState();
}

class _ChooseABurgerState extends State<ChooseABurger> {
  Widget Cardfunc(String img, String caption, int price, Info info) {
    return Container(
      height: 240,
      width: 240,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => {
            info.set(img, caption, price),
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreateYourOwnBurger()))
          },
          child: Card(
            elevation: 19.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 24),
                Container(
                    height: 170,
                    width: 170,
                    alignment: Alignment.center,
                    child: Image.asset(img,
                        height: 190, width: 190, fit: BoxFit.fill)),
                Text(caption)
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final info = Provider.of<Info>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: Text("Brrrgrr"),
        ),
        body: Container(
          child: Row(
            children: [
              Cardfunc('assets/images/VegBurger.jpg', 'Veg Burger', 170, info),
              Cardfunc(
                  'assets/images/CheeseBurger.jpg', 'Cheese Burger', 190, info),
              Cardfunc('assets/images/DoubleCheeseBurger.jpg', 'Double Burger',
                  300, info),
              Cardfunc('assets/images/ChickenBurger.jpg', 'Chicken Burger', 190,
                  info),
            ],
          ),
        ));
  }
}
