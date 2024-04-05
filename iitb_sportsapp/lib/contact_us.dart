import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              const Center(
                child: Text(
                  'Institute Sports Council',
                  style: TextStyle(fontSize: 26),
                ),
              ),
              const Center(
                child: Text(
                  '2024-25',
                  style: TextStyle(fontSize: 26),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: const Text(
                  'Cabinet',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: const Text(
                  'Position',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/person.jpg'),
                ),
              ),
              const SizedBox(height: 5),
              const Center(
                child: Text(
                  'person',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center, 
    children: [
      Padding(
        padding: EdgeInsets.only(right: 0.0), // Adjust the spacing here
        child: IconButton(
          icon: Icon(TablerIcons.phone),
          onPressed: () {
            // Handle phone button press
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 0.0), // Adjust the spacing here
        child: IconButton(
          icon: Icon(TablerIcons.mail),
          onPressed: () {
            // Handle email button press
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 0.0), 
        child: IconButton(
          icon: Icon(TablerIcons.brand_instagram),
          onPressed: () {
            // Handle Facebook button press
          },
        ),
      ),
      IconButton(
        icon: Icon(TablerIcons.message),
        onPressed: () {
          // Handle Instagram button press
        },
      ),
    ],
  ),
),

              SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(4, (index) {
                  return ContactInfoWidget(
                    photoPath: 'assets/images/person.jpg',
                    name: 'Person $index',
                    position: 'Position $index', // Dynamically pass position
                    radius: 60, // Adjust radius if needed
                  );
                }),
              ),
              SizedBox(height: 20),
              Center(
                child: const Text(
                  'Heads',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: const Text(
                  'Position',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/person.jpg'),
                ),
              ),
              const SizedBox(height: 5),
              const Center(
                child: Text(
                  'person',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: EdgeInsets.zero, // Adjust the padding here
        child: IconButton(
          icon: Icon(TablerIcons.phone),
          onPressed: () {
            // Handle phone button press
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.zero, // Adjust the padding here
        child: IconButton(
          icon: Icon(TablerIcons.mail),
          onPressed: () {
            // Handle email button press
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.zero, // Adjust the padding here
        child: IconButton(
          icon: Icon(TablerIcons.brand_instagram),
          onPressed: () {
            // Handle Facebook button press
          },
        ),
      ),
      IconButton(
        icon: Icon(TablerIcons.message),
        onPressed: () {
          // Handle Instagram button press
        },
      ),
    ],
  ),
),
              SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(2, (index) {
                  return ContactInfoWidget(
                    photoPath: 'assets/images/person.jpg',
                    name: 'Person $index',
                    position: 'Position $index', // Dynamically pass position
                    radius: 60, // Adjust radius if needed
                  );
                }),
              ),
              SizedBox(height: 20),
              Center(
                child: const Text(
                  'Secretaries',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(14, (index) {
                  return ContactInfoWidget(
                    photoPath: 'assets/images/person.jpg',
                    name: 'Person $index',
                    position: 'Position $index', // Dynamically pass position
                    radius: 60, // Adjust radius if needed
                  );
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContactInfoWidget extends StatelessWidget {
  final String photoPath;
  final String name;
  final String position;
  final double radius;

  const ContactInfoWidget({
    Key? key,
    required this.photoPath,
    required this.name,
    required this.position,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, // Adjust height as needed
      child:
      Column(
          children: [
            Text(
              position,
              style: const TextStyle(fontSize: 12),
            ),
            CircleAvatar(
              radius: radius,
              backgroundImage: AssetImage(photoPath),
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 12),
            ),
            Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: EdgeInsets.zero, // Adjust the padding here
        child: IconButton(
          icon: Icon(TablerIcons.phone),
          onPressed: () {
            // Handle phone button press
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.zero, // Adjust the padding here
        child: IconButton(
          icon: Icon(TablerIcons.mail),
          onPressed: () {
            // Handle email button press
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.zero, // Adjust the padding here
        child: IconButton(
          icon: Icon(TablerIcons.brand_instagram),
          onPressed: () {
            // Handle Facebook button press
          },
        ),
      ),
      IconButton(
        icon: Icon(TablerIcons.message),
        onPressed: () {
          // Handle Instagram button press
        },
      ),
    ],
  ),
),
          ],
        ),
      
    );
  }
}
