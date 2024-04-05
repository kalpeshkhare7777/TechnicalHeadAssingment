import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FrisbeePage extends StatelessWidget {
  final List<String> images = [
    'assets/images/img1.JPG',
    'assets/images/img2.JPG',
    'assets/images/img3.JPG',
    'assets/images/img4.JPG',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Frisbee',
          style: TextStyle(
            fontSize: 26, 
          ),
        ),
      ),
      body: 
       SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),  
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
          'Upcoming Events',
          style: TextStyle(
            fontSize: 26, 
          ),
        ),
         CarouselSlider(
  options: CarouselOptions(
    aspectRatio: 1 / 1,
    autoPlay: true,
    enlargeCenterPage: true,
  ),
  items: images.map((item) => Container(
    child: Center(
      child: Image.asset(
        item,
        fit: BoxFit.cover,
        width: 900,
      ),
    ),
  )).toList(),
),

        Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 45,
          child: SizedBox(
            height: 50,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
                ),
              ),
              child: const Text('Turf Booking',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
           ),),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 45,
          child: SizedBox(
            height: 50,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
                ),
              ),
              child: const Text('Ground Booking',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
           ),),
            ),
          ),
        ),
      ],
    ),
    SizedBox(height: 10),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 45,
          child: SizedBox(
            height: 50,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
                ),
              ),
              child: Text(
        'Football GC',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black, 
        ),),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 45,
          child: SizedBox(
            height: 50,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
                ),
              ),
              child: Text('Team',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
              ),
            ),
            ),
          ),
        ),
      ],
    ),
  ],
),
SizedBox(height:20),
Container(
      

      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 9 / 16,
      decoration: const BoxDecoration(
     
        image: DecorationImage(
          
            image: AssetImage('assets/images/400x400.png'),
            fit: BoxFit.fitWidth,
        ),
    ),
    ),
const SizedBox(height: 10),
    Container(
      

      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 9 / 16,
      decoration: const BoxDecoration(
     
        image: DecorationImage(
          
            image: AssetImage('assets/images/400x400.png'),
            fit: BoxFit.fitWidth,
        ),
    ),
    ),


        ],
       ),
       ),
    );
    
  }
}