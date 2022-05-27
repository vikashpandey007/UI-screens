import 'package:flutter/material.dart';

class ConsultScreen extends StatefulWidget {
  const ConsultScreen({Key? key}) : super(key: key);

  @override
  _ConsultScreenState createState() => _ConsultScreenState();
}

class _ConsultScreenState extends State<ConsultScreen> {
  List<dynamic> options = [
    {'name': 'fever', 'image': 'assets/cough.png'},
    {'name': 'Dark circles', 'image': 'assets/cough.png'},
    {'name': 'Acne', 'image': 'assets/cough.png'},
    {'name': 'Loose Motion \nDiarrhea', 'image': 'assets/cough.png'},
    {'name': 'Blocked Nose', 'image': 'assets/cough.png'},
    {'name': 'Heartburn', 'image': 'assets/cough.png'},
    {'name': 'Runny Nose', 'image': 'assets/cough.png'},
    {'name': 'Cough', 'image': 'assets/cough.png'},
    {'name': 'Itching', 'image': 'assets/cough.png'},
    {'name': 'HairFall', 'image': 'assets/cough.png'},
    {'name': 'Headache', 'image': 'assets/cough.png'},
    {'name': 'Abdominal Pain', 'image': 'assets/cough.png'},
    {'name': 'Vomiting', 'image': 'assets/cough.png'},
    {'name': 'Sports on Skin', 'image': 'assets/cough.png'},
  ];
  Widget _showButton() {
    return new Padding(
      padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: new MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 5.0,
              minWidth: 350.0,
              height: 50,
              color: Colors.grey,
              child: new Text('Choose Doctor',
                  style: new TextStyle(fontSize: 16.0, color: Colors.white)),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 35,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "Back",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "What is your concern ?",
                style: TextStyle(fontSize: 25),
              ),
            ),
		    Padding(
		      padding: const EdgeInsets.all(14.0),
		      child: Container(
		        height: 40,
		        margin: EdgeInsets.all(5),
		        child: TextField(
		          autofocus: false,
		          // style: TextStyle(fontSize: 15.0, color: Colors.black),
		          decoration: InputDecoration(
		            border: InputBorder.none,
		            hintText: 'Search here e.g: fever',
		            filled: true,
		            prefixIcon: Icon(Icons.search),
		            fillColor: Colors.grey.withOpacity(.4),
		            contentPadding: const EdgeInsets.only(
		              left: 14.0,
		              bottom: 10.0,
		            ),
		            focusedBorder: OutlineInputBorder(
		              borderSide: BorderSide(color: Colors.red),
		              borderRadius: BorderRadius.circular(10.0),
		            ),
		            enabledBorder: UnderlineInputBorder(
		              borderSide: BorderSide(color: Colors.grey),
		              borderRadius: BorderRadius.circular(10.0),
		            ),
		          ),
		        ),
		      ),
		    ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Most Selected Issues -------------------",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
            Expanded(
                flex: 10,
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  childAspectRatio: 10 / 4,
                  children: options.map<Widget>((e) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            
                            ),
                        color: Colors.blue[50],
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(e['image'], width: 50),
                            ),
                            Text(
                              e['name'],
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                )),
            _showButton()
          ],
        ),
      ),
    );
  }
}
