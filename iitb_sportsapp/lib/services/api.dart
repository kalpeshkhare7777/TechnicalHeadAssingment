import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iitb_sportsapp/models/person_model.dart';

class Api{

  static const baseURL = "http://192.168.4.1/api/";
  
//Post
  static addPerson(Map pdata) async{
    print(pdata);
    var url= Uri.parse(baseURL+"add_person");
try{
    final res = await http.post(url,body: pdata); 
    if(res.statusCode == 200)
    {
        var data = jsonDecode(res.body.toString());
    } 
    else{
        print("failed to upload data");
    }
}
catch(e){
  debugPrint(e.toString());
}
  }

//Get
static getPerson() async{
  List<Person> person =[];
  try{
    final res = await http.get(Uri.parse("url"));
    if(res.statusCode == 200){
      var data= jsonDecode( res.body);
      print(data);

      data['person']?.forEach((value)=> {
        person.add(
          Person(
            name: value['pname'],
            age: value['age'],
            rollno: value['prollno'],
          )
        )
        
      });
      return person;
    }
    else{

    }
  }
  catch(e){
      debugPrint(e.toString());
  }
}

}