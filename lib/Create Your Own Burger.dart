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
            color: Color.fromARGB(255, 26, 25, 25),
            fontSize: 36,
            //fontWeight: FontWeight.bold, // light
            //fontStyle: FontStyle.italic,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 9, 9, 9),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(4, 4),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(-4, -4),
                    ),
                  ]),
              width: 50,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 234, 166, 228),
                    padding: const EdgeInsets.only(
                        left: 0, right: 0, top: 0, bottom: 0),
                    textStyle: const TextStyle(fontSize: 10)),
                onPressed: () {},
                child: Center(
                  child: Text(
                    '-',
                    style: TextStyle(
                      color: Color.fromARGB(255, 21, 21, 21),
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 30,
              height: 50,
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(
                    color: Color.fromARGB(255, 36, 35, 35),
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 9, 9, 9),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(4, 4),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(-4, -4),
                    ),
                  ]),
              width: 50,
              height: 50,
              child: ElevatedButton(
                child: const Text(
                  '+',
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 17, 17),
                    fontSize: 40,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 234, 166, 228),
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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        /* appBar: AppBar(
          title: Text("Brrrgrrr"),
          backgroundColor: Color.fromARGB(255, 197, 188, 202),
        ),*/
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/purple.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 792.5,
                          width: 1040.0,
                          child: Image.asset(
                            'assets/images/burger2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          " 𝑪𝒉𝒊𝒄𝒌𝒆𝒏 𝑩𝒖𝒓𝒈𝒆𝒓",
                          style: TextStyle(
                            color: Color.fromARGB(255, 42, 3, 47),
                            fontSize: 55,
                            fontWeight: FontWeight.bold, // light
                            //fontStyle: FontStyle.italic, // italic
                            shadows: [
                              Shadow(
                                blurRadius: 8.0,
                                color: Color.fromARGB(255, 240, 237, 237),
                                offset: Offset(5.0, 6.0),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "𝟣𝟩𝟢",
                          style: TextStyle(
                            color: Color.fromARGB(255, 42, 3, 47),
                            fontSize: 55,
                            fontWeight: FontWeight.bold, // light
                            //fontStyle: FontStyle.italic, // italic
                            shadows: [
                              Shadow(
                                blurRadius: 8.0,
                                color: Color.fromARGB(255, 240, 237, 237),
                                offset: Offset(5.0, 6.0),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Ing("𝓒𝓱𝓮𝓮𝓼𝓮"),
                                Ing("𝓣𝓸𝓶𝓪𝓽𝓸𝓼"),
                                Ing("𝓞𝓷𝓲𝓸𝓷𝓼"),
                                Ing("𝓟𝓪𝓽𝓽𝔂"),
                                Ing("𝓛𝓮𝓽𝓽𝓾𝓬𝓮"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ]),
        ));
  }
}
