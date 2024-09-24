import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreenController with ChangeNotifier{

String? fact;
  Future<void> fetchData() async {
    try{
    var url = Uri.parse("https://catfact.ninja/fact");
   var response = await http.get(url);
   if(response.statusCode == 200){
    print(response.body);
    var decodedData = jsonDecode(response.body);
    print("FACT ::::${decodedData["fact"]}");
    fact = decodedData["fact"];
   }

  } catch(e){
    print(e);
  }
notifyListeners();
 }
}






