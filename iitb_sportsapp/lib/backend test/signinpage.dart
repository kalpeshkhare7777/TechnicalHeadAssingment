import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iitb_sportsapp/backend%20test/otppage.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _positionController = TextEditingController();
  String _selectedCountryCode = '+91'; // Default country code

  Future<void> _signIn() async {
    final String firstName = _firstNameController.text.trim();
    final String phone = _phoneController.text.trim();
    final String email = _emailController.text.trim();
    final String position = _positionController.text.trim();

    // Concatenating country code with phone number
    final String formattedPhone = _selectedCountryCode + phone;

    final Map<String, dynamic> requestData = {
      "firstName": firstName,
      "phone": formattedPhone,
      "email": email,
      "position": position
    };

    try {
      final response = await http.post(
        Uri.parse('https://ravanabackend.onrender.com/api/signup/otp'),
        body: json.encode(requestData),
        headers: {'Content-Type': 'application/json'},
      );

      final responseData = json.decode(response.body);
      print('Response: $responseData'); // Print the response data

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OTPPage(responseData['otp']),
        ),
      );
    } catch (e) {
      print('Failed to sign in: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            Row(
              children: [
                DropdownButton<String>(
                  value: _selectedCountryCode,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedCountryCode = newValue!;
                    });
                  },
                  items: <String>['+91', '+1'] // Add more country codes if needed
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: _phoneController,
                    decoration: InputDecoration(labelText: 'Phone'),
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                  ),
                ),
              ],
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _positionController,
              decoration: InputDecoration(labelText: 'Position'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _signIn,
              child: Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
