import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/NetworkHandler.dart';
import 'package:test/models/OrderModel.dart';

class Success extends StatefulWidget {
  var responsedata;

  Success({Key? key, this.responsedata}) : super(key: key);

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  NetworkHandler networkHandler = NetworkHandler();
  OrderModel orderModel = OrderModel();

  void initState() {
    super.initState();
    fetch();
    print(widget.responsedata);
  }

  void fetch() async {
    var response =
        await networkHandler.getOrder("/getOrder/${widget.responsedata}");
    orderModel = OrderModel.fromJson(response);
    setState(() {});
    print(orderModel.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color.fromARGB(255, 163, 23, 32),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Order Placed Successfully !!!",
                    style: GoogleFonts.dancingScript(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Name: ${orderModel.name}",
                    style: GoogleFonts.dancingScript(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Price: ${orderModel.price}",
                    style: GoogleFonts.dancingScript(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Patty: ${orderModel.patty}",
                    style: GoogleFonts.dancingScript(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Cheese: ${orderModel.cheese}",
                    style: GoogleFonts.dancingScript(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lettuce: ${orderModel.lettuce}",
                    style: GoogleFonts.dancingScript(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Tomato: ${orderModel.tomato}",
                    style: GoogleFonts.dancingScript(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Tomato: ${orderModel.onion}",
                    style: GoogleFonts.dancingScript(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )));
  }
}
