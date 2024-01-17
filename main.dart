import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 67.0),
              child: Column(
                children: [
                  Text(
                    'About Us',
                    style: TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10), // Add some spacing between the two text widgets
                  Text(
                    'We encourage users with rewards, badges, discounts, promo codes, and charitable donations for responsible disposal. We are also in collaboration with several organizations to promote plastic disposal.',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center, // Adjust the alignment as needed
                    maxLines: 3, // Set the maximum number of lines
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 17.0),
              height: 400, // Adjust the height as needed
              width: double.infinity, // Set width to take the full available space
              child: Image.asset(
                'images/homepage.png', // Update with the correct path and file name
                fit: BoxFit.cover,
              ),
            ),Padding(
  padding: EdgeInsets.only(left: 25.0), // Adjust the value as needed
  child:Row(
  children: [
    Align(
      alignment: Alignment(-0.8, 0),
      child: NumberContainer(number: 1, color: Color(0xA606AF52)),
    ),
    
    Align(
      alignment: Alignment(-0.6, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Padding(
            padding: EdgeInsets.only(top: 140.0), // Adjust the top padding as needed
            child:
          Text(
            "  Sign Up/Register with your account.              ",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1.2,
              fontStyle: FontStyle.normal,
              decorationThickness: 2.0,
            ),
          ),),
          Image.network(
  'https://cdn-icons-png.flaticon.com/512/6432/6432212.png',
  width: 250, // Specify the width
  height: 300, // Specify the height
 // Adjust the fit property as needed
)
,
        ],
      ),
    ),
  ],
),),
              Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    ElevatedButton(
      onPressed: () {
        // Add your upload button functionality here
      },
      child: Text('Upload'),
    ),
    SizedBox(width: 20),
    Text('Upload Images Of Plastic Waste Disposal',style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1.2,
              fontStyle: FontStyle.normal,
              decorationThickness: 2.0,
            ),), // Added text widget
    SizedBox(width: 20),
    Image.network(
      'https://media.istockphoto.com/id/1221761496/vector/boy-and-girl-collecting-plastic-wastes-into-garbage-bag-children-picking-up-trash-for.jpg?s=612x612&w=0&k=20&c=8XM5N_T6VfegSgD6hrPx-2TWauzSdUHYCuBbEDUPjA4=',
      width: 250,
      height: 300,
    ),
    SizedBox(width: 20),
    Align(
      alignment: Alignment(0.8, 0),
      child: NumberContainer(number: 2, color: Color.fromARGB(166, 38, 168, 97)),
    ),
  ],
),
Padding(
  padding: EdgeInsets.only(left: 25.0), // Adjust the value as needed
  child:Row(
  children: [
    Align(
      alignment: Alignment(-0.8, 0),
      child: NumberContainer(number: 3, color: Color(0xA606AF52)),
    ),
    
    Align(
      alignment: Alignment(-0.6, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Padding(
            padding: EdgeInsets.only(top: 140.0), // Adjust the top padding as needed
            child:
          Text(
            "  Earn Points By Validation Of Your Images.              ",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1.2,
              fontStyle: FontStyle.normal,
              decorationThickness: 2.0,
            ),
          ),),
          Image.network(
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQWN-SLzk5eeEuA9zBJKzsM0qbvtLsKDfJ-w&usqp=CAU',
  width: 250, // Specify the width
  height: 300, // Specify the height
 // Adjust the fit property as needed
)
,
        ],
      ),
    ),
  ],
),),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    
    SizedBox(width: 20),
    Text('Reedem Prizes and Coupons From Your Points',style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1.2,
              fontStyle: FontStyle.normal,
              decorationThickness: 2.0,
            ),), // Added text widget
    SizedBox(width: 20),
    Image.network(
      'https://atlas-content-cdn.pixelsquid.com/stock-images/green-gift-box-2MQ1qN1-600.jpg',
      width: 250,
      height: 300,
    ),
    SizedBox(width: 20),
    Align(
      alignment: Alignment(0.8, 0),
      child: NumberContainer(number: 4, color: Color.fromARGB(166, 38, 168, 97)),
    ),
  ],
),

          ],
        ),
      ),
    );
  }
}


class NumberContainer extends StatefulWidget {
  final int number;
  final Color color;

  const NumberContainer({Key? key, required this.number, required this.color})
      : super(key: key);

  @override
  _NumberContainerState createState() => _NumberContainerState();
}

class _NumberContainerState extends State<NumberContainer> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: Container(

        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: isHovered ? widget.color.withOpacity(0.8) : widget.color,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            widget.number.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              
            ),
          ),
        ),
      ),
    );
  }
}