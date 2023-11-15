import 'dart:convert';

import 'package:express_client/Customers.dart';
import 'package:http/http.dart' as http;
class API{
  static String base = "http://localhost:2000/";

  static Future<String> createNew(Customers customers)async{
    print(customers);
    Map<String,dynamic> dta={
      'accNumber':customers.accNumber,
      'accHolder':customers.accHolder,
      'accBal':customers.accBalance
    };
    print(dta);
    var url=Uri.parse("$base");
    Map<String, String> args={"Content-Type":"application/json"};
    var response=await http.post(url,headers: args,body: jsonEncode(dta));
    if (response.statusCode == 200) {
      print('User created successfully');
      var bdy = jsonDecode(response.body);
      return bdy['message'];
    } else {
      throw Exception('Failed to create user');
    }
  }

  static readAll()async{
    List<Customers> all=[];
    try{
      var url=Uri.parse("$base");
      var response = await http.get(url);
      if(response.statusCode==200){
        var whole = jsonDecode(response.body);
        print(whole['message']);
        whole['message'].forEach((data)=>{
          all.add(Customers.named(data['acc_number'], data['acc_holder'], data['acc_bal']))
        });
      }
      return all;
    }
    catch(error){
      print(error.toString());
    }
  }
}