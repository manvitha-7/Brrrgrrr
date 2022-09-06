import 'package:flutter/material.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Create Your Own Burger.dart';
import '../models/ChooseYourOwnBurgerModel.dart';

class CardFunc extends StatefulWidget {
  String caption;

  String img;

  Info info;

  int price;

  CardFunc(
      {Key? key,
      required this.img,
      required this.caption,
      required this.price,
      required this.info})
      : super(key: key);

  @override
  State<CardFunc> createState() => _CardFuncState();
}

class _CardFuncState extends State<CardFunc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          margin: EdgeInsets.all(4),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => {
                widget.info.set(widget.img, widget.caption, widget.price),
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateYourOwnBurger()))
              },
              child: Card(
                elevation: 19.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  // padding: EdgeInsets.all(10.0),
                  width: 279,
                  height: 279,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 17,
                      ),
                      Container(
                          height: 230,
                          width: 230,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage(widget.img),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: SizedBox()),
                      SizedBox(height: 1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.caption,
                            style: GoogleFonts.dancingScript(
                                color: Color.fromARGB(255, 163, 23, 32),
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
