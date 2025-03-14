# My Card
My Card is a simple Flutter app that displays a personalized business card with essential contact information, including:

- A profile picture
- A name and title
- Contact details (phone number, email, etc.)

![app](https://github.com/user-attachments/assets/57a6ba19-e6c4-4d45-ad0b-f0d842f45cb3)

## Key Features & Concepts Covered:
#### Flutter Widgets
- Card: Used to display individual contact details in a structured manner.
- ListTile: Helps organize icons and text within the Card widget.
- Container, Column, Row, Padding, SizedBox: Used for layout and spacing.

#### Styling and Theming
- TextStyle: Customizes fonts, sizes, and colors.
- BoxDecoration: Adds background colors and shapes.
- Colors: Uses Flutter's built-in color palette.
#### Flutter Layout System
- Center: Ensures content is properly positioned.
- Expanded: Distributes available space efficiently.
- mainAxisAlignment and crossAxisAlignment: Aligns widgets inside Column and Row.
#### Assets and Images
- Loading and displaying a profile picture using Image.asset.

## Code Structure
```
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
```
