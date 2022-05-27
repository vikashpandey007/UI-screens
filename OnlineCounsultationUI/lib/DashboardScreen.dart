import 'package:flutter/material.dart';
import 'package:test_screen/ConsultScreen.dart';
import 'package:test_screen/HealthFiles.dart';
import 'package:test_screen/HomeScreen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;
  var barcount = [
    HomeScreen(),
    ConsultScreen(),
    HeathFiles(),
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.health_and_safety_rounded),backgroundColor: Colors.red,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: barcount[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.green,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),

            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_copy_sharp
            ),
            label: 'Health Files'
          ),
        ],
      ),
    );
  }
}
