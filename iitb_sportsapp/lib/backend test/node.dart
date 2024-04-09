import "package:flutter/material.dart";
import "package:iitb_sportsapp/backend%20test/create.dart";

class CrudPage extends StatelessWidget {
const CrudPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CreatePage()),
              );
              },
              child: Text("Create"),
            ),
            SizedBox(height: 20), // Add some space between buttons
            ElevatedButton(
              onPressed: () {
               
              },
              child: Text("Read"),
            ),
            SizedBox(height: 20), // Add some space between buttons
            ElevatedButton(
              onPressed: () {
                // Handle Update button press
              },
              child: Text("Update"),
            ),
            SizedBox(height: 20), // Add some space between buttons
            ElevatedButton(
              onPressed: () {
                // Handle Delete button press
              },
              child: Text("Delete"),
            ),
          ],
        ),
      ),

    );
  }
}