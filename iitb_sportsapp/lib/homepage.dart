import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iitb_sportsapp/contact_us.dart';
import 'package:iitb_sportsapp/profilepage.dart';
import 'package:iitb_sportsapp/sports/atheletics.dart';
import 'package:iitb_sportsapp/sports/basketball.dart';
import 'package:iitb_sportsapp/sports/football.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:iitb_sportsapp/sports/frisbee.dart';
import 'package:iitb_sportsapp/sports/rubiks_cube.dart';


class HomePage extends StatelessWidget{
  final TextEditingController _searchController = TextEditingController();
  final List<String> images = [
    'assets/images/img1.JPG',
    'assets/images/img2.JPG',
    'assets/images/img3.JPG',
    'assets/images/img4.JPG',


  ];
  

  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  leading: const Icon(Icons.menu),
  title: Transform(
              transform:  Matrix4.translationValues(-20.0, 0.0, 0.0),
              child: Image.asset(
                'assets/images/iitbsports_logo.png',height: 60,
                ),
                ),
      
  actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(TablerIcons.bell),
              ),
              Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: IconButton(
        icon: Icon(TablerIcons.user_circle),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilePage()),
          );
        },
      ),
    ),
            ],
shape: const Border(
    bottom: BorderSide(
      color: Colors.black,
      width: 1
    )
  ),
  elevation: 0,
    ),

    
  body:
  

  SingleChildScrollView(
    
    
  
  child:Container(  
    padding: const EdgeInsets.all(15.0),  
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text('Hi Mansi!', style: TextStyle(fontSize: 30)),

      Container(
          padding: const EdgeInsets.only(top: 5.0),
          child: TextField(
            controller: _searchController,
           
            decoration: InputDecoration(
               filled: true,
                fillColor: Colors.deepPurple[50],
              hintText: 'Search for people, posts, tags...',
              // Add a clear button to the search bar
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () => _searchController.clear(),
              ),
              // Add a search icon or button to the search bar
              prefixIcon: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  // Perform the search here
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              
            ),
          ),
      ),

     
       CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 1 / 1,
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          items: images.map((item) => Container(
            padding : const EdgeInsets.only(top:15.0,bottom: 15),
            child: Center(
              child: Image.asset(
                item,
                fit: BoxFit.cover,
                width: 900,
              ),
            ),
          )).toList(),
        ),
      Container(
      padding : const EdgeInsets.only(top:10,bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all( 
          color: Colors.black,
          
          width: 1,
        ),
      ),
      child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Jump right to your favorite sport!',
                style: TextStyle(
                  fontSize: 16,
                  
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SportCircle1(color: Colors.grey.shade400),
                  SportCircle2(color: Colors.grey.shade400),
                  SportCircle3(color: Colors.grey.shade400),
                  SportCircle4(color: Colors.grey.shade400),
                  SportCircle5(color: Colors.grey.shade400),                ],
              ),
              
            ],
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
     

      Container(
       

        
      ),
      Container(
   

  
      ),
    ]
    ) 
    )
    ),
    persistentFooterButtons: [
  BottomAppBar(
    child: SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.black), // Define border properties
            ),
            child: IconButton(
              icon: const Icon(
                TablerIcons.home,
                size: 30, // Adjust icon size as needed
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.black), // Define border properties
            ),
            child: IconButton(
              icon: const Icon(
                TablerIcons.ball_football,
                size: 30,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.black), // Define border properties
            ),
            child: IconButton(
              icon: const Icon(
                TablerIcons.player_play,
                size: 30, // Adjust icon size as needed
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.black), // Define border properties
            ),
            child: IconButton(
              icon: const Icon(
                TablerIcons.messages,
                size: 30, // Adjust icon size as needed
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.black), // Define border properties
            ),
            child: IconButton(
              icon: const Icon(
                TablerIcons.users_group,
                size: 30, // Adjust icon size as needed
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUsPage()),
                );
              },
            ),
          ),
        ],
      ),
    ),
  ),
],


    );
    
  }

}

class SportCircle1 extends StatelessWidget {
  final Color color;

  const SportCircle1({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FootballPage()),
        );
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          color: color,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logo1.png',
          ),
        ),
      ),
    );
  }
}
class SportCircle2 extends StatelessWidget {
  final Color color;

  const SportCircle2({
    super.key,
    required this.color,

  });

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AtheleticsPage()),
        );
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          color: color,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logo2.png',
          ),
        ),
      ),
    );
  }
}
class SportCircle3 extends StatelessWidget {
  final Color color;

  const SportCircle3({
    super.key,
    required this.color,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BasketballPage()),
        );
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          color: color,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logo3.png',
          ),
        ),
      ),
    );
  }
}
class SportCircle4 extends StatelessWidget {
  final Color color;

  const SportCircle4({
    super.key,
    required this.color,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RubikscubePage()),
        );
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          color: color,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logo4.png',
          ),
        ),
      ),
    );
  }
}
class SportCircle5 extends StatelessWidget {
  final Color color;

  const SportCircle5({
    super.key,
    required this.color,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FrisbeePage()),
        );
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          color: color,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logo5.png',
          ),
        ),
      ),
    );
  }
}