import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:test_screen/ConsultScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  // openDrawer() {
  //   if (_scaffoldKey.currentState.isDrawerOpen) {
  //     print('drawer is open');
  //     _scaffoldKey.currentState.openEndDrawer();
  //     setState(() {
  //       // isDrawerOpne = true;
  //     });
  //   } else {
  //     print('drawer is close');
  //     _scaffoldKey.currentState.openDrawer();
  //     setState(() {
  //       // isDrawerOpne = false;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Location",
              style: TextStyle(fontSize: 10),
            ),
            Text("Kandivali"),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.wallet_membership),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notification_add_sharp),
          )
        ],
      ),
     
      drawer: new Drawer(
        child: new ListView(),
      ),
      key: _scaffoldKey,
      body: Container(
        child: ListView(
          children: [
            // Row(
            //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
                
            //     IconButton(
            //       icon: Icon(Icons.menu),
            //       onPressed: () {
                   
            //       },
            //     ),
            //      Padding(
            //           padding: const EdgeInsets.only(left: 280),
            //           child: Icon(Icons.wallet_membership),
            //         ),
                   
            //         Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Icon(Icons.notification_add_sharp),
            //         ),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ConsultScreen(),
                      ));
                    },
                    child: Card(
                      child: Container(
                          height: MediaQuery.of(context).size.height * 0.12,
                          width: MediaQuery.of(context).size.width * 0.25,
                          decoration: BoxDecoration(
                              borderRadius: new BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage("assets/doctor6.jpeg"),
                                fit: BoxFit.fitHeight,
                              )),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "Online \n Consultation",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                          )),
                    ),
                  ),
                  Card(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage("assets/doctor6.jpeg"),
                              fit: BoxFit.fitHeight,
                            )),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              "At-Home \n Lab Tests",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                        )),
                  ),
                  Card(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage("assets/doctor6.jpeg"),
                              fit: BoxFit.fitHeight,
                            )),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "At-Home \n Lab Tests",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent[100],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ClipRect(
                            child: Image.asset(
                              "assets/splash.png",
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Order \n Medicines",
                        textAlign: TextAlign.center,
                        style: TextStyle(),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent[100],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ClipRect(
                            child: Image.asset(
                              "assets/splash.png",
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Covid \n Care",
                        textAlign: TextAlign.center,
                        style: TextStyle(),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent[100],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ClipRect(
                            child: Image.asset(
                              "assets/splash.png",
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Buy \n Subcriptin",
                        textAlign: TextAlign.center,
                        style: TextStyle(),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ClipRect(
                            child: Image.asset(
                              "assets/splash.png",
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Start Self- \n Checks",
                        textAlign: TextAlign.center,
                        style: TextStyle(),
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                          borderRadius: new BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage("assets/doctor7.jpeg"),
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                  Card(
                      child: Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage("assets/doctor8.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                  child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage("assets/doctor4.jpeg"),
                      fit: BoxFit.fill,
                    )),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                          borderRadius: new BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage("assets/doctor1.jpeg"),
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                  Card(
                      child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage("assets/doctor2.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
