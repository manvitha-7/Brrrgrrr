import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:test/Create%20Your%20Own%20Burger.dart';
import 'package:test/widgets/CardFunc.dart';
import 'models/ChooseYourOwnBurgerModel.dart';

class ChooseABurger extends StatefulWidget {
  const ChooseABurger({Key? key}) : super(key: key);

  @override
  State<ChooseABurger> createState() => _ChooseABurgerState();
}

class _ChooseABurgerState extends State<ChooseABurger> {
  @override
  Widget build(BuildContext context) {
    final info = Provider.of<Info>(context, listen: false);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 163, 23, 32),
        extendBodyBehindAppBar: false,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Brrgrr',
              style: GoogleFonts.dancingScript(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            )),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: ResponsiveGridRow(children: [
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/VegBurger.jpg',
                  caption: 'Veg Burger',
                  price: 170,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/CheeseBurger.jpg',
                  caption: 'Cheese Burger',
                  price: 190,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/DoubleCheeseBurger.jpg',
                  caption: 'Double Burger',
                  price: 300,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/ChickenBurger.jpg',
                  caption: 'Veg Burger',
                  price: 170,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/EggBurger.jpg',
                  caption: 'Egg Burger',
                  price: 110,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/FishBurger.jpeg',
                  caption: 'Fish Burger',
                  price: 140,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/KoreanBurger.jpg',
                  caption: 'Korean Burger',
                  price: 170,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/LambBurger.jpeg',
                  caption: 'Lamb Burger',
                  price: 170,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/PizzaBurger.jpg',
                  caption: 'Pizza Burger',
                  price: 170,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/TeriyakiBurger.jpeg',
                  caption: 'Teriyaki Burger',
                  price: 190,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/TurkeyBurger.jpg',
                  caption: 'Turkey Burger',
                  price: 190,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/ZingerBurger.jpg',
                  caption: 'Zinger Burger',
                  price: 310,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/IceCreamBurger.jpg',
                  caption: 'Ice-Cream Burger',
                  price: 190,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/BlackBurger.jpeg',
                  caption: 'Black Burger',
                  price: 190,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/Classic-Burger.jpg',
                  caption: 'Classic Burger',
                  price: 150,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/GrilledBurger.jpeg',
                  caption: 'Grilled Burger',
                  price: 190,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/HealthyBurger.jpg',
                  caption: 'Healthy Burger',
                  price: 300,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/TacoBurger.jpg',
                  caption: 'Taco Burger',
                  price: 180,
                  info: info),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 3,
              lg: 2,
              child: CardFunc(
                  img: 'assets/images/TwisperBurger.jpg',
                  caption: 'Twisper Burger',
                  price: 190,
                  info: info),
            ),
          ]),
        ));
  }
}


// Container(
//           child: Row(
//             children: [
//               CardFunc(
//                   img: 'assets/images/VegBurger.jpg',
//                   caption: 'Veg Burger',
//                   price: 170,
//                   info: info),
//               CardFunc(
//                   img: 'assets/images/CheeseBurger.jpg',
//                   caption: 'Cheese Burger',
//                   price: 190,
//                   info: info),
//               CardFunc(
//                   img: 'assets/images/DoubleCheeseBurger.jpg',
//                   caption: 'Double Burger',
//                   price: 300,
//                   info: info),
//               CardFunc(
//                   img: 'assets/images/ChickenBurger.jpg',
//                   caption: 'Veg Burger',
//                   price: 170,
//                   info: info),
//             ],
//           ),
//         ));
