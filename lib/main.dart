import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff75420e),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 90,
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBXXUc6tVO7TVi1OWY5eFV0eC-zybXkXBt1Q&s'),
              ),
              Text(
                'Vinayak Goyal',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSans3',
                  fontSize: 20,
                  color: Colors.grey.shade300,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.brown.shade200,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                // padding: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Icon(
                        Icons.phone,
                        size: 45,
                        color: Colors.brown,
                      ),
                    ),
                    title: Text(
                      '+91 999 999 9999',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      //textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                // padding: EdgeInsets.all(10),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        size: 45,
                        color: Colors.brown,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'vinayakgoyalcs@gmail.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'SourceSans3',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
