import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CreatePage extends StatelessWidget {
  var idController = TextEditingController();
  var customerController = TextEditingController();
  var quantityController = TextEditingController();
  var priceController = TextEditingController();

  Future<void> postData(BuildContext context) async {
  final url = Uri.parse('https://reqbin.com/echo/post/json');
  final response = await http.post(
    url,
    body: json.encode({
      'Id': int.parse(idController.text),
      'Customer': customerController.text,
      'Quantity': int.parse(quantityController.text),
      'Price': double.parse(priceController.text),
    }),
    headers: {'Content-Type': 'application/json'},
  );

  if (response.statusCode == 200) {
    final responseData = json.decode(response.body);
    print('Response: $responseData'); // Print response in terminal
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Response'),
        content: Text(json.encode(responseData)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  } else {
    print('Failed to submit form. Status code: ${response.statusCode}'); // Print error in terminal
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Error'),
        content: Text('Failed to submit form. Status code: ${response.statusCode}'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: idController,
              decoration: InputDecoration(labelText: 'ID'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: customerController,
              decoration: InputDecoration(labelText: 'Customer'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: quantityController,
              decoration: InputDecoration(labelText: 'Quantity'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: priceController,
              decoration: InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => postData(context),
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
