import 'package:flutter/material.dart';
//import 'package:linux_connect/code.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
    MaterialApp(
    home: MyApp())
    );
}

class MyApp extends StatefulWidget{
  @override
  _mydynamicclass createState()=> _mydynamicclass();
}

class _mydynamicclass extends State<MyApp> {
  var print_this=20;
  var newvar="some";

   Future<String> web() async{
  var url= "http://13.233.101.217/cgi-bin/py_script.py?x=3";
  var response = await http.get(url);
  print(response.body);
  setState((){
    print_this=response.statusCode;
    newvar=print_this.toString();
    print(newvar);
  }

  );
  print(print_this);
  print_this=100;
}

@override
Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Linux Connect")
      ),
    body: Column(
      children:[
        Container(
          child: TextField()
          ),
    Container(
            child: FlatButton(onPressed: (){web();}, child: Text('Submit'),color: Colors.amber,),
    ),
    Text(newvar??'default'),
        ] ,
    )
    ) ; 
  

}
}