import 'package:flutter/material.dart';
import 'package:iitb_sportsapp/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          
          children: [
            SizedBox(height: 100),
            Container(
  width: 370, // Adjust the width as needed
  height: 370, // Adjust the height as needed
  child: Image.asset(
    'assets/images/iitbsports_logo.png',
    fit: BoxFit.contain, // Ensure the image fits within the container
  ),
),
            TextField(
              decoration: InputDecoration(
                labelText: 'LDAP ID',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 50),

            SizedBox(
  width: double.infinity,
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    },
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 16), // Adjust button height as needed
    ),
    child: Text(
      'Login',
      style: TextStyle(fontSize: 20), // Adjust text size as needed
    ),
  ),
),
SizedBox(height:50),
 SizedBox(
  width: 200,
  child: TextButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    },
    style: TextButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 16), // Adjust button height as needed
    ),
    child: Text(
      'Guest Login',
      style: TextStyle(fontSize: 20), // Adjust text size as needed
    ),
  ),
),
          ],
        ),
      ),
    );
  }
  
 
}
